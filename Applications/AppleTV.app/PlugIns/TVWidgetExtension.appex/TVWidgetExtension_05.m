uint64_t sub_100091668@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X8>)
{
  v98 = a3;
  v99 = a2;
  v95 = sub_100006334(&qword_100126948);
  v4 = __chkstk_darwin(v95);
  v96 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v93 = &v74 - v6;
  v7 = sub_1000D19FC();
  v94 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v74 - v11;
  v13 = sub_100006334(&qword_100126950);
  __chkstk_darwin(v13 - 8);
  v77 = &v74 - v14;
  v84 = sub_1000D2EBC();
  v79 = *(v84 - 8);
  __chkstk_darwin(v84);
  v78 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000D2FFC();
  v82 = *(v83 - 8);
  v16 = __chkstk_darwin(v83);
  v80 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = &v74 - v18;
  v19 = sub_1000D312C();
  v88 = *(v19 - 8);
  v89 = v19;
  __chkstk_darwin(v19);
  v86 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000D30FC();
  v91 = *(v21 - 8);
  v92 = v21;
  v22 = __chkstk_darwin(v21);
  v87 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v90 = &v74 - v24;
  v25 = sub_1000D2F9C();
  v85 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100006334(&qword_100126930);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v74 - v32;
  sub_10000F8D0(a1, &v74 - v32, &qword_100126930);
  v34 = sub_1000D2D5C();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v33, 1, v34);
  v97 = v33;
  if (v36 != 1)
  {
    v75 = v10;
    v76 = a1;
    v51 = v99;
    sub_10000F8D0(v33, v31, &qword_100126930);
    v52 = (*(v35 + 88))(v31, v34);
    if (v52 == enum case for SportsActivityClock.generic(_:))
    {
      (*(v35 + 96))(v31, v34);
      v53 = v85;
      (*(v85 + 32))(v27, v31, v25);
      v54 = v86;
      sub_1000D2F8C();
      v55 = v90;
      v56 = v51;
      sub_1000D310C();
      (*(v88 + 8))(v54, v89);
      v58 = v91;
      v57 = v92;
      v59 = v87;
      (*(v91 + 16))(v87, v55, v92);
      sub_1000921F8(v59, v98);

      sub_10000F938(v76, &qword_100126930);
      (*(v58 + 8))(v55, v57);
      (*(v53 + 8))(v27, v25);
      goto LABEL_6;
    }

    if (v52 == enum case for SportsActivityClock.baseball(_:))
    {
      (*(v35 + 96))(v31, v34);
      v60 = v82;
      v61 = v81;
      v62 = v83;
      (*(v82 + 32))(v81, v31, v83);
      v63 = v80;
      (*(v60 + 16))(v80, v61, v62);
      sub_100096358(v63, v100);

      sub_10000F938(v76, &qword_100126930);
      (*(v60 + 8))(v61, v62);
      v64 = v100[1];
      v65 = v98;
      *v98 = v100[0];
      *(v65 + 1) = v64;
      *(v65 + 2) = v100[2];
      *(v65 + 48) = v101;
      type metadata accessor for SportsWidgetClock(0);
      goto LABEL_7;
    }

    if (v52 == enum case for SportsActivityClock.soccer(_:))
    {
      (*(v35 + 96))(v31, v34);
      v66 = v79;
      v67 = v78;
      (*(v79 + 32))(v78, v31, v84);
      v68 = v86;
      sub_1000D2E9C();
      v69 = v90;
      sub_1000D310C();
      (*(v88 + 8))(v68, v89);
      v71 = v91;
      v70 = v92;
      v72 = v87;
      (*(v91 + 16))(v87, v69, v92);
      v73 = v77;
      sub_1000D2EAC();
      sub_100092A44(v72, v73, v98);

      sub_10000F938(v76, &qword_100126930);
      (*(v71 + 8))(v69, v70);
      (*(v66 + 8))(v67, v84);
      type metadata accessor for SportsWidgetClock(0);
      goto LABEL_7;
    }

    (*(v35 + 8))(v31, v34);
    a1 = v76;
    v10 = v75;
  }

  sub_1000D19EC();
  sub_1000D19EC();
  sub_100097BC4(&qword_100122F08, &type metadata accessor for Date);
  v37 = sub_1000D355C();

  result = sub_10000F938(a1, &qword_100126930);
  if (v37)
  {
    v39 = v7;
    v40 = v12;
    v42 = v93;
    v41 = v94;
    v43 = *(v94 + 32);
    (v43)(v93, v40, v7);
    v44 = v95;
    (v43)(v42 + *(v95 + 48), v10, v7);
    v45 = v96;
    sub_10000F8D0(v42, v96, &qword_100126948);
    v91 = *(v44 + 48);
    v99 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
    v46 = v98;
    v92 = v98 + v99[8];
    v43();
    v47 = *(v41 + 8);
    v47(v45 + v91, v39);
    sub_10000F998(v42, v45, &qword_100126948);
    v48 = *(v44 + 48);
    v49 = sub_100006334(&qword_100122E88);
    (v43)(&v92[*(v49 + 36)], v45 + v48, v39);
    v47(v45, v39);
    v50 = v99;
    (*(v41 + 56))(v46 + v99[9], 1, 1, v39);
    *v46 = 0;
    v46[1] = 0xE000000000000000;
    v46[3] = 0;
    v46[4] = 0;
    v46[2] = 0;
    *(v46 + 5) = xmmword_1000EA8B0;
    v46[7] = 0xE000000000000000;
    *(v46 + v50[10]) = 0;
    *(v46 + v50[11]) = 0;
LABEL_6:
    type metadata accessor for SportsWidgetClock(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return sub_10000F938(v97, &qword_100126930);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000921F8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = sub_100006334(&qword_100126948);
  v4 = __chkstk_darwin(v68);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v64 - v6;
  v7 = sub_1000D19FC();
  v73 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v64 - v10;
  v11 = sub_100006334(&qword_100126958);
  __chkstk_darwin(v11 - 8);
  v78 = &v64 - v12;
  v13 = sub_100006334(&qword_100122E88);
  v76 = *(v13 - 8);
  v77 = v13;
  __chkstk_darwin(v13);
  v74 = &v64 - v14;
  v15 = sub_100006334(&qword_100126960);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v75 = &v64 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v64 - v22;
  __chkstk_darwin(v21);
  v25 = &v64 - v24;
  v26 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v26 - 8);
  v28 = &v64 - v27;
  *a2 = sub_1000D30CC();
  a2[1] = v29;
  a2[2] = sub_1000D30BC();
  a2[3] = v30;
  a2[4] = sub_1000D30DC();
  a2[5] = v31;
  a2[6] = sub_1000D30EC();
  a2[7] = v32;
  v81 = a2;
  sub_1000D30AC();
  v33 = sub_1000D309C();
  v34 = *(v33 - 8);
  v79 = *(v34 + 48);
  v80 = v34 + 48;
  v35 = v79(v25, 1, v33);
  v71 = v34;
  if (v35 == 1)
  {
    sub_10000F938(v25, &qword_100126960);
    (*(v73 + 56))(v28, 1, 1, v7);
  }

  else
  {
    sub_1000D307C();
    (*(v34 + 8))(v25, v33);
  }

  v72 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  sub_10000F998(v28, v81 + *(v72 + 36), &qword_100122E90);
  sub_1000D30AC();
  v36 = v79(v23, 1, v33);
  v37 = v78;
  if (v36 == 1)
  {
    v65 = v33;
    sub_10000F938(v23, &qword_100126960);
    v38 = v76;
    (*(v76 + 56))(v37, 1, 1, v77);
    v39 = v69;
    sub_1000D19EC();
    v40 = v70;
    sub_1000D19AC();
    sub_100097BC4(&qword_100122F08, &type metadata accessor for Date);
    result = sub_1000D355C();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v42 = v40;
    v43 = v73;
    v64 = v18;
    v44 = *(v73 + 32);
    v45 = v66;
    v44(v66, v39, v7);
    v69 = a1;
    v46 = v7;
    v47 = v68;
    v44((v45 + *(v68 + 48)), v42, v7);
    v48 = v67;
    sub_10000F8D0(v45, v67, &qword_100126948);
    v70 = *(v47 + 48);
    v49 = v74;
    v44(v74, v48, v46);
    v50 = *(v43 + 8);
    v50(&v70[v48], v46);
    sub_10000F998(v45, v48, &qword_100126948);
    v51 = *(v47 + 48);
    v53 = v77;
    v52 = v78;
    v44((v49 + *(v77 + 36)), (v48 + v51), v46);
    v18 = v64;
    v54 = v46;
    a1 = v69;
    v50(v48, v54);
    v55 = (*(v38 + 48))(v52, 1, v53);
    v33 = v65;
    v56 = v71;
    if (v55 != 1)
    {
      sub_10000F938(v52, &qword_100126958);
    }
  }

  else
  {
    sub_1000D306C();
    v56 = v71;
    (*(v71 + 8))(v23, v33);
    (*(v76 + 56))(v37, 0, 1, v77);
    v57 = v37;
    v49 = v74;
    sub_10000F998(v57, v74, &qword_100122E88);
  }

  v58 = v72;
  sub_10000F998(v49, v81 + *(v72 + 32), &qword_100122E88);
  v59 = v75;
  sub_1000D30AC();
  if (v79(v59, 1, v33) == 1)
  {
    sub_10000F938(v59, &qword_100126960);
    v60 = 1;
  }

  else
  {
    v60 = sub_1000D308C();
    (*(v56 + 8))(v59, v33);
  }

  v61 = v81;
  *(v81 + *(v58 + 40)) = v60 & 1;
  sub_1000D30AC();
  v62 = sub_1000D30FC();
  (*(*(v62 - 8) + 8))(a1, v62);
  v63 = v79(v18, 1, v33) != 1;
  result = sub_10000F938(v18, &qword_100126960);
  *(v61 + *(v58 + 44)) = v63;
  return result;
}

uint64_t sub_100092A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a2;
  v66 = a3;
  v70 = sub_1000D302C();
  v73 = *(v70 - 8);
  v4 = __chkstk_darwin(v70);
  v92 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v91 = &v63 - v6;
  v7 = sub_1000D304C();
  v81 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v63 - v10;
  v11 = sub_100006334(&qword_100126950);
  __chkstk_darwin(v11 - 8);
  v13 = &v63 - v12;
  v14 = sub_1000D301C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000D30FC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  (*(v19 + 16))(v21, a1, v18);
  sub_1000921F8(v21, v66);
  v23 = v65;
  sub_10000F8D0(v65, v13, &qword_100126950);
  v24 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000F938(v23, &qword_100126950);
    (*(v19 + 8))(v22, v18);
    sub_10000F938(v13, &qword_100126950);
    v25 = 0;
    goto LABEL_25;
  }

  v26 = v22;
  v79 = v19;
  v80 = v18;
  v27 = v24;
  (*(v24 + 32))(v17, v13, v14);
  v28 = sub_1000D300C();
  v29 = *(v28 + 16);
  if (v29)
  {
    v63 = v14;
    v64 = v26;
    v94 = &_swiftEmptyArrayStorage;
    v30 = v28;
    sub_100053C7C(0, v29, 0);
    result = v30;
    v32 = 0;
    v84 = v94;
    v76 = v30 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v75 = v81 + 16;
    v90 = v73 + 16;
    v89 = (v73 + 32);
    v33 = (v73 + 88);
    v88 = enum case for CompetitorShootoutsViewModel.ShootoutState.empty(_:);
    v87 = enum case for CompetitorShootoutsViewModel.ShootoutState.miss(_:);
    v86 = enum case for CompetitorShootoutsViewModel.ShootoutState.goal(_:);
    v85 = (v73 + 8);
    v74 = (v81 + 8);
    v34 = v72;
    v35 = v17;
    v36 = v71;
    v69 = v7;
    v68 = v27;
    v67 = v17;
    v77 = v29;
    v78 = v30;
    while (1)
    {
      if (v32 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v37 = *(v81 + 72);
      v83 = v32;
      v38 = *(v81 + 16);
      v38(v36, v76 + v37 * v32, v7);
      v38(v34, v36, v7);
      v39 = sub_1000D303C();
      v40 = v36;
      v41 = *(v39 + 16);
      if (v41)
      {
        break;
      }

      v55 = *v74;
      (*v74)(v34, v7);
      v55(v40, v7);
      v42 = &_swiftEmptyArrayStorage;
      v36 = v40;
LABEL_20:
      v57 = v83;
      v56 = v84;
      v94 = v84;
      v59 = v84[2];
      v58 = v84[3];
      if (v59 >= v58 >> 1)
      {
        sub_100053C7C((v58 > 1), v59 + 1, 1);
        v57 = v83;
        v56 = v94;
      }

      v32 = v57 + 1;
      v56[2] = v59 + 1;
      v84 = v56;
      v56[v59 + 4] = v42;
      result = v78;
      v61 = v79;
      v60 = v80;
      if (v32 == v77)
      {

        sub_10000F938(v65, &qword_100126950);
        (*(v61 + 8))(v64, v60);
        (*(v27 + 8))(v35, v63);
        v62 = v66;
        v25 = v84;
        goto LABEL_26;
      }
    }

    v93 = &_swiftEmptyArrayStorage;
    sub_100053C9C(0, v41, 0);
    v42 = v93;
    v43 = *(v73 + 80);
    v82 = v39;
    v44 = v39 + ((v43 + 32) & ~v43);
    v45 = *(v73 + 72);
    v46 = *(v73 + 16);
    v47 = v70;
    while (1)
    {
      v48 = v91;
      v46(v91, v44, v47);
      v49 = v92;
      (*v89)(v92, v48, v47);
      v50 = (*v33)(v49, v47);
      if (v50 != v88)
      {
        if (v50 == v87)
        {
          v51 = 1;
          goto LABEL_14;
        }

        if (v50 == v86)
        {
          v51 = 2;
          goto LABEL_14;
        }

        (*v85)(v92, v47);
      }

      v51 = 0;
LABEL_14:
      v93 = v42;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        sub_100053C9C((v52 > 1), v53 + 1, 1);
        v47 = v70;
        v42 = v93;
      }

      v42[2] = v53 + 1;
      *(v42 + v53 + 32) = v51;
      v44 += v45;
      if (!--v41)
      {

        v54 = *v74;
        v34 = v72;
        v7 = v69;
        (*v74)(v72, v69);
        v36 = v71;
        v54(v71, v7);
        v27 = v68;
        v35 = v67;
        goto LABEL_20;
      }
    }
  }

  sub_10000F938(v23, &qword_100126950);
  (*(v79 + 8))(v26, v80);
  (*(v27 + 8))(v17, v14);
  v25 = &_swiftEmptyArrayStorage;
LABEL_25:
  v62 = v66;
LABEL_26:
  result = type metadata accessor for SportsWidgetSoccerClockViewModel(0);
  *(v62 + *(result + 20)) = v25;
  return result;
}

uint64_t sub_1000932BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v164 = a3;
  v163 = sub_1000D2F7C();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v159 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1000D2E8C();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_100126940);
  __chkstk_darwin(v9 - 8);
  v155 = &v134 - v10;
  v157 = sub_1000D2D4C();
  v156 = *(v157 - 8);
  v11 = __chkstk_darwin(v157);
  v136 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v135 = &v134 - v13;
  v177 = sub_1000D2E0C();
  v181 = *(v177 - 8);
  __chkstk_darwin(v177);
  v176 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000D318C();
  v170 = *(v15 - 8);
  v171 = v15;
  v16 = __chkstk_darwin(v15);
  v153 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v165 = &v134 - v18;
  v19 = sub_100006334(&qword_100126930);
  v20 = __chkstk_darwin(v19 - 8);
  v154 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v169 = &v134 - v23;
  __chkstk_darwin(v22);
  v25 = &v134 - v24;
  v26 = sub_1000D2E4C();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v178 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v134 - v30;
  v175 = sub_1000D2D9C();
  v180 = *(v175 - 8);
  v32 = __chkstk_darwin(v175);
  v174 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v134 - v34;
  v173 = sub_1000D31AC();
  v179 = *(v173 - 8);
  v36 = __chkstk_darwin(v173);
  v172 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v134 - v38;
  sub_1000D2DBC();
  sub_1000D2EFC();
  v40 = sub_1000D2DAC();
  if (!*(v40 + 16))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v152 = v27;
  v41 = *(v27 + 16);
  v140 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v166 = v26;
  v142 = v41;
  v41(v31, v40 + v140, v26);

  v150 = v25;
  v42 = a1;
  sub_1000D2F6C();
  v149 = sub_1000D2D6C();
  v148 = v43;
  v44 = sub_1000D2D7C();
  v45 = v165;
  v151 = v39;
  sub_1000D319C();
  v46 = *(v44 + 16);
  v168 = v42;
  v167 = a2;
  if (v46 && (v47 = sub_100023678(v45), (v48 & 1) != 0))
  {
    v49 = *(*(v44 + 56) + 8 * v47);
    v141 = *(v170 + 8);
    v141(v45, v171);
  }

  else
  {

    v141 = *(v170 + 8);
    v141(v45, v171);
    v49 = 0;
  }

  *&v182[0] = v49;
  v165 = sub_1000D39BC();
  v147 = v50;
  v146 = sub_1000D2DDC();
  v145 = v51;
  v52 = v176;
  sub_1000D2E1C();
  v144 = sub_1000D2DEC();
  v143 = v53;
  v54 = *(v181 + 8);
  v181 += 8;
  v138 = v54;
  v54(v52, v177);
  v55 = sub_1000D2D6C();
  v57 = v56;
  v58 = sub_1000D2D8C() & 1;
  v59 = sub_1000D2E3C();
  v61 = Color.init(hex:)(v59, v60);
  v62 = v150;
  if (!v61)
  {
    v61 = sub_1000D283C();
  }

  v63 = v61;
  v64 = sub_1000D2E2C();
  sub_10000F938(v62, &qword_100126930);
  v65 = v152;
  v66 = *(v152 + 8);
  v67 = v31;
  v68 = v166;
  v150 = (v152 + 8);
  v139 = v66;
  v66(v67, v166);
  v69 = *(v180 + 8);
  v180 += 8;
  v137 = v69;
  v69(v35, v175);
  v35 = v179 + 8;
  v70 = v151;
  v151 = *(v179 + 1);
  v151(v70, v173);
  v71 = v148;
  *a4 = v149;
  *(a4 + 8) = v71;
  v72 = v147;
  *(a4 + 16) = v165;
  *(a4 + 24) = v72;
  v73 = v145;
  *(a4 + 32) = v146;
  *(a4 + 40) = v73;
  *(a4 + 48) = v55;
  *(a4 + 56) = v57;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  v74 = v143;
  *(a4 + 80) = v144;
  *(a4 + 88) = v74;
  *(a4 + 96) = v64 & 1;
  *(a4 + 104) = v63;
  *(a4 + 112) = v58;
  sub_1000D2DBC();
  a1 = v174;
  sub_1000D2F0C();
  v75 = sub_1000D2DAC();
  if (*(v75 + 16) < 2uLL)
  {
    goto LABEL_21;
  }

  v142(v178, v75 + v140 + *(v65 + 72), v68);

  sub_1000D2F6C();
  v165 = sub_1000D2D6C();
  v152 = v76;
  v77 = sub_1000D2D7C();
  v78 = v153;
  sub_1000D319C();
  v79 = *(v77 + 16);
  v179 = v35;
  if (v79 && (v80 = sub_100023678(v78), (v81 & 1) != 0))
  {
    v82 = *(*(v77 + 56) + 8 * v80);
    v141(v78, v171);
  }

  else
  {

    v141(v78, v171);
    v82 = 0;
  }

  *&v182[0] = v82;
  v83 = sub_1000D39BC();
  v170 = v84;
  v171 = v83;
  v153 = sub_1000D2DDC();
  v86 = v85;
  v87 = v176;
  sub_1000D2E1C();
  v88 = sub_1000D2DEC();
  v90 = v89;
  v138(v87, v177);
  v91 = sub_1000D2D6C();
  v93 = v92;
  v94 = sub_1000D2D8C() & 1;
  v95 = sub_1000D2E3C();
  v97 = Color.init(hex:)(v95, v96);
  if (!v97)
  {
    v97 = sub_1000D283C();
  }

  v98 = v97;
  v99 = v178;
  v100 = sub_1000D2E2C();
  sub_10000F938(v169, &qword_100126930);
  v139(v99, v166);
  v137(v174, v175);
  v151(v172, v173);
  v101 = v152;
  *(a4 + 120) = v165;
  *(a4 + 128) = v101;
  v102 = v170;
  *(a4 + 136) = v171;
  *(a4 + 144) = v102;
  *(a4 + 152) = v153;
  *(a4 + 160) = v86;
  *(a4 + 168) = v91;
  *(a4 + 176) = v93;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = v88;
  *(a4 + 208) = v90;
  *(a4 + 216) = v100 & 1;
  *(a4 + 224) = v98;
  *(a4 + 232) = v94;
  a1 = v154;
  v35 = v168;
  sub_1000D2F6C();
  if (qword_1001221A8 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v103 = qword_100126910;
  v104 = type metadata accessor for SportsWidgetContentViewModel(0);
  sub_100091668(a1, v103, (a4 + v104[6]));
  v105 = v155;
  sub_1000D2F5C();
  v106 = v156;
  v107 = v157;
  v108 = (*(v156 + 48))(v105, 1, v157);
  v109 = v167;
  v110 = v163;
  if (v108 == 1)
  {
    sub_10000F938(v105, &qword_100126940);
    v111 = sub_1000D283C();
    v112 = sub_1000D283C();
    v113 = a4 + v104[8];
    *v113 = 0;
    *(v113 + 8) = 0xE000000000000000;
    *(v113 + 16) = 0;
    *(v113 + 24) = v111;
    *(v113 + 32) = 0;
    *(v113 + 40) = v112;
    *(v113 + 48) = 0;
  }

  else
  {
    v114 = v135;
    (*(v106 + 32))(v135, v105, v107);
    v115 = v136;
    (*(v106 + 16))(v136, v114, v107);
    v116 = sub_1000D2DAC();
    sub_1000960D8(v115, v116, v182);
    (*(v106 + 8))(v114, v107);
    v117 = a4 + v104[8];
    v118 = v182[1];
    *v117 = v182[0];
    *(v117 + 16) = v118;
    *(v117 + 32) = v182[2];
    *(v117 + 48) = v183;
  }

  v119 = v160;
  v120 = v158;
  v121 = v161;
  (*(v160 + 16))(v158, v109, v161);
  v122 = v162;
  v123 = v159;
  (*(v162 + 16))(v159, v35, v110);
  v124 = sub_10009659C(v120, v123);
  v125 = (a4 + v104[7]);
  *v125 = v124;
  v125[1] = v126;
  v125[2] = v127;
  v125[3] = v128;
  *(a4 + v104[9]) = sub_1000D2F1C() & 1;
  *(a4 + v104[10]) = sub_1000D2F3C() & 1;
  *(a4 + v104[11]) = sub_1000D2F2C() & 1;
  *(a4 + v104[12]) = sub_1000D2ECC() & 1;
  sub_1000D2DCC();
  sub_1000D190C();

  sub_1000D2CEC();
  v129 = sub_1000D2CDC();
  v131 = v130;
  (*(v119 + 8))(v109, v121);
  result = (*(v122 + 8))(v35, v110);
  v133 = (a4 + v104[15]);
  *v133 = v129;
  v133[1] = v131;
  *(a4 + v104[14]) = v164 & 1;
  return result;
}

uint64_t sub_1000941A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v159 = a4;
  v177 = a3;
  v158 = sub_1000D2F7C();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v154 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1000D2E8C();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v153 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006334(&qword_100126940);
  __chkstk_darwin(v10 - 8);
  v150 = &v129 - v11;
  v152 = sub_1000D2D4C();
  v151 = *(v152 - 8);
  v12 = __chkstk_darwin(v152);
  v130 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v129 = &v129 - v14;
  v15 = sub_100006334(&qword_100126930);
  __chkstk_darwin(v15 - 8);
  v149 = &v129 - v16;
  v171 = sub_1000D2E0C();
  v176 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000D318C();
  v165 = *(v18 - 8);
  v166 = v18;
  v19 = __chkstk_darwin(v18);
  v148 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v129 - v21;
  v23 = sub_1000D2E4C();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v173 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v129 - v27;
  v169 = sub_1000D2D9C();
  v175 = *(v169 - 8);
  v29 = __chkstk_darwin(v169);
  v168 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v129 - v31;
  v33 = sub_1000D31AC();
  v34 = __chkstk_darwin(v33);
  v167 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v129 - v36;
  v178 = v38;
  v39 = *(v38 + 16);
  v172 = a1;
  v174 = v40;
  v161 = v38 + 16;
  v160 = v39;
  (v39)(&v129 - v36, a1);
  v41 = a2;
  sub_1000D2EFC();
  v42 = sub_1000D2DAC();
  if (!*(v42 + 16))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v147 = v24;
  v43 = *(v24 + 16);
  v135 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v163 = v23;
  v137 = v43;
  v43(v28, v42 + v135, v23);

  v146 = sub_1000D2D6C();
  v145 = v44;
  v45 = sub_1000D2D7C();
  v162 = v37;
  sub_1000D319C();
  v46 = *(v45 + 16);
  v164 = v41;
  if (v46 && (v47 = sub_100023678(v22), (v48 & 1) != 0))
  {
    v49 = *(*(v45 + 56) + 8 * v47);
    v136 = *(v165 + 8);
    v136(v22, v166);
  }

  else
  {

    v136 = *(v165 + 8);
    v136(v22, v166);
    v49 = 0;
  }

  *&v179[0] = v49;
  v144 = sub_1000D39BC();
  v143 = v50;
  v142 = sub_1000D2DDC();
  v141 = v51;
  v52 = v170;
  sub_1000D2E1C();
  v140 = sub_1000D2DEC();
  v139 = v53;
  v54 = *(v176 + 8);
  v176 += 8;
  v132 = v54;
  v54(v52, v171);
  v55 = sub_1000D2D6C();
  v57 = v56;
  LOBYTE(v138) = sub_1000D2D8C() & 1;
  v138 = v138;
  v58 = sub_1000D2E3C();
  v60 = Color.init(hex:)(v58, v59);
  v61 = v162;
  if (!v60)
  {
    v60 = sub_1000D283C();
  }

  v62 = v60;
  v63 = sub_1000D2E2C();
  v64 = v147;
  v65 = *(v147 + 8);
  v66 = v28;
  v67 = v163;
  v134 = v147 + 8;
  v133 = v65;
  v65(v66, v163);
  v68 = *(v175 + 8);
  v175 += 8;
  v131 = v68;
  v68(v32, v169);
  v69 = *(v178 + 8);
  v70 = v61;
  v41 = v174;
  v178 += 8;
  v162 = v69;
  v69(v70, v174);
  v71 = v145;
  *a5 = v146;
  *(a5 + 8) = v71;
  v72 = v143;
  *(a5 + 16) = v144;
  *(a5 + 24) = v72;
  v73 = v141;
  *(a5 + 32) = v142;
  *(a5 + 40) = v73;
  *(a5 + 48) = v55;
  *(a5 + 56) = v57;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  v74 = v139;
  *(a5 + 80) = v140;
  *(a5 + 88) = v74;
  *(a5 + 96) = v63 & 1;
  *(a5 + 104) = v62;
  *(a5 + 112) = v138;
  v37 = v167;
  v160(v167, v172, v41);
  sub_1000D2F0C();
  v75 = sub_1000D2DAC();
  if (*(v75 + 16) < 2uLL)
  {
    goto LABEL_21;
  }

  v137(v173, v75 + v135 + *(v64 + 72), v67);

  v161 = sub_1000D2D6C();
  v160 = v76;
  v77 = sub_1000D2D7C();
  v78 = v148;
  sub_1000D319C();
  if (*(v77 + 16) && (v79 = sub_100023678(v78), (v80 & 1) != 0))
  {
    v81 = *(*(v77 + 56) + 8 * v79);
    v136(v78, v166);
  }

  else
  {

    v136(v78, v166);
    v81 = 0;
  }

  *&v179[0] = v81;
  v82 = sub_1000D39BC();
  v165 = v83;
  v166 = v82;
  v148 = sub_1000D2DDC();
  v85 = v84;
  v86 = v170;
  sub_1000D2E1C();
  v87 = sub_1000D2DEC();
  v89 = v88;
  v132(v86, v171);
  v90 = sub_1000D2D6C();
  v92 = v91;
  v93 = sub_1000D2D8C() & 1;
  v94 = sub_1000D2E3C();
  v96 = Color.init(hex:)(v94, v95);
  if (!v96)
  {
    v96 = sub_1000D283C();
  }

  v97 = v96;
  v98 = v173;
  v99 = sub_1000D2E2C();
  v133(v98, v163);
  v131(v168, v169);
  v162(v167, v174);
  v100 = v160;
  *(a5 + 120) = v161;
  *(a5 + 128) = v100;
  v101 = v165;
  *(a5 + 136) = v166;
  *(a5 + 144) = v101;
  *(a5 + 152) = v148;
  *(a5 + 160) = v85;
  *(a5 + 168) = v90;
  *(a5 + 176) = v92;
  *(a5 + 184) = 0;
  *(a5 + 192) = 0;
  *(a5 + 200) = v87;
  *(a5 + 208) = v89;
  *(a5 + 216) = v99 & 1;
  *(a5 + 224) = v97;
  *(a5 + 232) = v93;
  v37 = v149;
  v41 = v164;
  sub_1000D2F6C();
  if (qword_1001221A8 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v102 = qword_100126910;
  v103 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0);
  sub_100091668(v37, v102, (a5 + v103[6]));
  v104 = v150;
  sub_1000D2F5C();
  v105 = v151;
  v106 = v152;
  v107 = (*(v151 + 48))(v104, 1, v152);
  v108 = v177;
  if (v107 == 1)
  {
    sub_10000F938(v104, &qword_100126940);
    v109 = sub_1000D283C();
    v110 = sub_1000D283C();
    v111 = a5 + v103[7];
    *v111 = 0;
    *(v111 + 8) = 0xE000000000000000;
    *(v111 + 16) = 0;
    *(v111 + 24) = v109;
    *(v111 + 32) = 0;
    *(v111 + 40) = v110;
    *(v111 + 48) = 0;
  }

  else
  {
    v112 = v129;
    (*(v105 + 32))(v129, v104, v106);
    v113 = v130;
    (*(v105 + 16))(v130, v112, v106);
    v114 = sub_1000D2DAC();
    sub_1000960D8(v113, v114, v179);
    (*(v105 + 8))(v112, v106);
    v115 = a5 + v103[7];
    v116 = v179[1];
    *v115 = v179[0];
    *(v115 + 16) = v116;
    *(v115 + 32) = v179[2];
    *(v115 + 48) = v180;
  }

  v117 = v155;
  v118 = v153;
  v119 = v156;
  (*(v155 + 16))(v153, v108, v156);
  v120 = v157;
  v121 = v154;
  v122 = v158;
  (*(v157 + 16))(v154, v41, v158);
  v123 = sub_10009659C(v118, v121);
  v124 = (a5 + v103[8]);
  *v124 = v123;
  v124[1] = v125;
  v124[2] = v126;
  v124[3] = v127;
  *(a5 + v103[9]) = sub_1000D2F1C() & 1;
  *(a5 + v103[10]) = sub_1000D2F3C() & 1;
  LOBYTE(v121) = sub_1000D2F2C();
  (*(v117 + 8))(v108, v119);
  (*(v120 + 8))(v41, v122);
  result = (v162)(v172, v174);
  *(a5 + v103[11]) = v121 & 1;
  *(a5 + v103[12]) = v159 & 1;
  return result;
}

uint64_t sub_100095008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v166 = a4;
  v168 = sub_1000D2F7C();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1000D2E8C();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v164 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_100126940);
  __chkstk_darwin(v11 - 8);
  v161 = &v143 - v12;
  v163 = sub_1000D2D4C();
  v162 = *(v163 - 8);
  v13 = __chkstk_darwin(v163);
  v144 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v143 - v15;
  v170 = sub_1000D318C();
  v169 = *(v170 - 8);
  v16 = __chkstk_darwin(v170);
  v145 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v143 - v18;
  v182 = sub_1000D2E0C();
  v191 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100006334(&qword_100126930);
  v22 = __chkstk_darwin(v21 - 8);
  v160 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v186 = &v143 - v25;
  __chkstk_darwin(v24);
  v27 = &v143 - v26;
  v28 = sub_1000D2E4C();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v188 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v143 - v32;
  v180 = sub_1000D2D9C();
  v190 = *(v180 - 8);
  v34 = __chkstk_darwin(v180);
  v179 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v143 - v36;
  v38 = sub_1000D31AC();
  v39 = __chkstk_darwin(v38);
  v187 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v192 = v41;
  v42 = *(v41 + 16);
  v173 = &v143 - v43;
  v183 = a1;
  v189 = v44;
  v172 = v41 + 16;
  v171 = v42;
  v42();
  sub_1000D2EFC();
  v45 = sub_1000D2DAC();
  if (!*(v45 + 16))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v159 = v29;
  v47 = *(v29 + 16);
  v46 = v29 + 16;
  v146 = (*(v46 + 64) + 32) & ~*(v46 + 64);
  v175 = v28;
  v152 = v46;
  v151 = v47;
  v47(v33, v45 + v146, v28);

  v48 = sub_1000D2F4C();
  sub_1000D2F6C();
  v184 = sub_1000D2D6C();
  v185 = v49;
  v176 = a2;
  v174 = a3;
  if ((v48 & 1) != 0 && (v50 = sub_100090CDC(v27, 0, v37), v51))
  {
    v157 = v51;
    v158 = v50;
    v52 = v191;
  }

  else
  {
    v53 = sub_1000D2D7C();
    sub_1000D319C();
    if (*(v53 + 16) && (v54 = sub_100023678(v19), (v55 & 1) != 0))
    {
      v56 = *(*(v53 + 56) + 8 * v54);
      (*(v169 + 8))(v19, v170);
    }

    else
    {

      (*(v169 + 8))(v19, v170);
      v56 = 0;
    }

    v52 = v191;
    *&v195[0] = v56;
    v158 = sub_1000D39BC();
    v157 = v57;
  }

  v156 = sub_1000D2DDC();
  v155 = v58;
  v59 = v181;
  sub_1000D2E1C();
  v154 = sub_1000D2DFC();
  v153 = v60;
  v148 = *(v52 + 1);
  v148(v59, v182);
  v61 = sub_1000D2D6C();
  v63 = v62;
  v64 = sub_1000D2D8C() & 1;
  v65 = sub_1000D2E3C();
  v67 = Color.init(hex:)(v65, v66);
  v191 = v52 + 2;
  if (!v67)
  {
    v67 = sub_1000D283C();
  }

  a3 = v67;
  v68 = sub_1000D2E2C();
  sub_10000F938(v27, &qword_100126930);
  v27 = v159;
  v69 = *(v159 + 1);
  a2 = v175;
  v150 = v159 + 8;
  v149 = v69;
  v69(v33, v175);
  v70 = *(v190 + 8);
  v190 += 8;
  v147 = v70;
  v70(v37, v180);
  v71 = *(v192 + 8);
  v72 = v173;
  v73 = v189;
  v192 += 8;
  v173 = v71;
  (v71)(v72, v189);
  v194 = v64;
  v74 = v185;
  *a5 = v184;
  *(a5 + 8) = v74;
  v75 = v157;
  *(a5 + 16) = v158;
  *(a5 + 24) = v75;
  v76 = v155;
  *(a5 + 32) = v156;
  *(a5 + 40) = v76;
  *(a5 + 48) = v61;
  *(a5 + 56) = v63;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  v77 = v153;
  *(a5 + 80) = v154;
  *(a5 + 88) = v77;
  *(a5 + 96) = v68 & 1;
  *(a5 + 104) = a3;
  *(a5 + 112) = v64;
  (v171)(v187, v183, v73);
  v29 = v179;
  sub_1000D2F0C();
  v78 = sub_1000D2DAC();
  if (*(v78 + 16) < 2uLL)
  {
    goto LABEL_38;
  }

  v151(v188, v78 + v146 + *(v27 + 9), a2);

  v79 = sub_1000D2F4C();
  sub_1000D2F6C();
  v172 = sub_1000D2D6C();
  v171 = v80;
  if ((v79 & 1) != 0 && (v81 = sub_100090CDC(v186, 0, v29), v82))
  {
    v83 = v82;
    v170 = v81;
  }

  else
  {
    v84 = sub_1000D2D7C();
    v85 = v145;
    sub_1000D319C();
    if (*(v84 + 16) && (v86 = sub_100023678(v85), (v87 & 1) != 0))
    {
      v88 = *(*(v84 + 56) + 8 * v86);
      (*(v169 + 8))(v85, v170);
    }

    else
    {

      (*(v169 + 8))(v85, v170);
      v88 = 0;
    }

    *&v195[0] = v88;
    v170 = sub_1000D39BC();
    v83 = v89;
  }

  v169 = sub_1000D2DDC();
  v159 = v90;
  v91 = v181;
  sub_1000D2E1C();
  v92 = sub_1000D2DFC();
  v94 = v93;
  v148(v91, v182);
  v95 = sub_1000D2D6C();
  v97 = v96;
  v98 = sub_1000D2D8C() & 1;
  v99 = sub_1000D2E3C();
  v101 = Color.init(hex:)(v99, v100);
  if (!v101)
  {
    v101 = sub_1000D283C();
  }

  v102 = v101;
  v103 = v188;
  v104 = sub_1000D2E2C();
  sub_10000F938(v186, &qword_100126930);
  v149(v103, v175);
  v147(v179, v180);
  (v173)(v187, v189);
  v193 = v98;
  v105 = v171;
  *(a5 + 120) = v172;
  *(a5 + 128) = v105;
  *(a5 + 136) = v170;
  *(a5 + 144) = v83;
  v106 = v159;
  *(a5 + 152) = v169;
  *(a5 + 160) = v106;
  *(a5 + 168) = v95;
  *(a5 + 176) = v97;
  *(a5 + 184) = 0;
  *(a5 + 192) = 0;
  *(a5 + 200) = v92;
  *(a5 + 208) = v94;
  *(a5 + 216) = v104 & 1;
  *(a5 + 224) = v102;
  *(a5 + 232) = v98;
  a2 = v176;
  if (sub_1000D2F4C())
  {
    v37 = v174;
    a3 = v168;
    v29 = v167;
    v27 = v162;
    if (qword_1001221B0 == -1)
    {
LABEL_25:
      v107 = &qword_100126918;
      goto LABEL_29;
    }

LABEL_39:
    swift_once();
    goto LABEL_25;
  }

  v37 = v174;
  a3 = v168;
  v29 = v167;
  v27 = v162;
  if (qword_1001221A8 != -1)
  {
    swift_once();
  }

  v107 = &qword_100126910;
LABEL_29:
  v108 = *v107;
  v109 = v160;
  sub_1000D2F6C();
  v110 = type metadata accessor for SportsWatchWidgetViewModel(0);
  v111 = v110[6];
  v191 = v108;
  sub_100091668(v109, v191, (a5 + v111));
  v112 = v161;
  sub_1000D2F5C();
  v113 = v112;
  v114 = v112;
  v115 = v163;
  if ((*(v27 + 6))(v114, 1, v163) == 1)
  {
    sub_10000F938(v113, &qword_100126940);
    v116 = sub_1000D283C();
    v117 = sub_1000D283C();
    v118 = a5 + v110[8];
    *v118 = 0;
    *(v118 + 8) = 0xE000000000000000;
    *(v118 + 16) = 0;
    *(v118 + 24) = v116;
    *(v118 + 32) = 0;
    *(v118 + 40) = v117;
    *(v118 + 48) = 0;
  }

  else
  {
    v119 = v143;
    (*(v27 + 4))(v143, v113, v115);
    v120 = v37;
    v121 = a3;
    v122 = v144;
    (*(v27 + 2))(v144, v119, v115);
    v123 = sub_1000D2DAC();
    v124 = v122;
    a3 = v121;
    v37 = v120;
    sub_1000960D8(v124, v123, v195);
    (*(v27 + 1))(v119, v115);
    v125 = a5 + v110[8];
    v126 = v195[1];
    *v125 = v195[0];
    *(v125 + 16) = v126;
    *(v125 + 32) = v195[2];
    *(v125 + 48) = v196;
  }

  v127 = v194;
  v128 = v164;
  (*(v177 + 16))(v164, v37, v178);
  v129 = v165;
  (*(v29 + 16))(v165, a2, a3);
  v130 = sub_10009659C(v128, v129);
  v131 = (a5 + v110[7]);
  *v131 = v130;
  v131[1] = v132;
  v131[2] = v133;
  v131[3] = v134;
  *(a5 + v110[9]) = sub_1000D2F1C() & 1;
  *(a5 + v110[10]) = sub_1000D2F3C() & 1;
  *(a5 + v110[11]) = sub_1000D2F2C() & 1;
  if ((v127 & 1) != 0 || (v185 = v171, v184 = v172, v193 == 1))
  {

    v136 = (a5 + v110[12]);
    *v136 = v184;
    v136[1] = v135;
  }

  else
  {
    v137 = (a5 + v110[12]);
    *v137 = 0;
    v137[1] = 0;
  }

  *(a5 + v110[13]) = v166 & 1;
  *(a5 + v110[14]) = sub_1000D2F4C() & 1;
  sub_1000D2CEC();
  v138 = sub_1000D2CDC();
  v140 = v139;

  (*(v177 + 8))(v37, v178);
  (*(v29 + 8))(a2, a3);
  result = (v173)(v183, v189);
  v142 = (a5 + v110[15]);
  *v142 = v138;
  v142[1] = v140;
  return result;
}

uint64_t sub_1000960D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000D2E4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D2D3C();
  v12 = v11;
  v37 = a1;
  result = sub_1000D2D1C();
  if (!*(a2 + 16))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  LODWORD(v36) = result;
  v34 = v12;
  v35 = v10;
  v14 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v32 = *(v7 + 16);
  v32(v9, v14, v6);
  v15 = sub_1000D2E3C();
  v17 = v16;
  v33 = *(v7 + 8);
  v33(v9, v6);
  v18 = Color.init(hex:)(v15, v17);
  if (!v18)
  {
    v18 = sub_1000D281C();
  }

  v19 = v18;
  v39 = v36 & 1;
  result = sub_1000D2D2C();
  if (*(a2 + 16) < 2uLL)
  {
    goto LABEL_9;
  }

  v36 = v19;
  v20 = result;
  v32(v9, v14 + *(v7 + 72), v6);

  v21 = sub_1000D2E3C();
  v23 = v22;
  v33(v9, v6);
  v24 = Color.init(hex:)(v21, v23);
  if (!v24)
  {
    v24 = sub_1000D281C();
  }

  v25 = v24;
  v26 = v34;
  v38 = v20 & 1;
  v27 = v37;
  v28 = sub_1000D2D0C();
  v29 = sub_1000D2D4C();
  result = (*(*(v29 - 8) + 8))(v27, v29);
  v30 = v39;
  v31 = v38;
  *a3 = v35;
  *(a3 + 8) = v26;
  *(a3 + 16) = v30;
  *(a3 + 24) = v36;
  *(a3 + 32) = v31;
  *(a3 + 40) = v25;
  *(a3 + 48) = v28 & 1;
  return result;
}

uint64_t sub_100096358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_1000D30FC();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000D312C();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D2FBC();
  v22 = v11;
  v23 = v10;
  sub_1000D2FAC();
  if (qword_1001221A8 != -1)
  {
    swift_once();
  }

  sub_1000D310C();
  v12 = sub_1000D30CC();
  v14 = v13;
  v26 = sub_1000D2FEC() & 1;
  v15 = sub_1000D2FDC();
  v16 = sub_1000D2FCC();
  v17 = sub_1000D2FFC();
  (*(*(v17 - 8) + 8))(a1, v17);
  (*(v4 + 8))(v6, v25);
  result = (*(v7 + 8))(v9, v24);
  v19 = v26;
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  v20 = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  return result;
}

id sub_10009659C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_1000D2E6C();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D19FC();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D31AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D2EDC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  sub_1000D2EEC();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for SportsActivityContentState.EventInfoState.preGame(_:))
  {
    if (v20 != enum case for SportsActivityContentState.EventInfoState.startingSoon(_:))
    {
      v33 = sub_1000D2F7C();
      (*(*(v33 - 8) + 8))(v57, v33);
      v34 = sub_1000D2E8C();
      (*(*(v34 - 8) + 8))(a1, v34);
      (*(v17 + 8))(v19, v16);
      return 0;
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v24 = result;
      v25 = sub_1000D35FC();
      v26 = [v24 localizedStringForKey:v25];

      if (v26)
      {
        v27 = sub_1000D360C();
      }

      else
      {
        v27 = 0;
      }

      v40 = sub_1000D2F7C();
      (*(*(v40 - 8) + 8))(v57, v40);
      v41 = sub_1000D2E8C();
      (*(*(v41 - 8) + 8))(a1, v41);
      return v27;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000D2DBC();
  v21 = (*(v13 + 88))(v15, v12);
  v22 = a1;
  if (v21 == enum case for Sport.baseball(_:))
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
LABEL_11:
      v28 = result;
      v29 = sub_1000D35FC();
      v30 = [v28 localizedStringForKey:v29];

      v32 = v55;
      v31 = v56;
      if (v30)
      {
        v27 = sub_1000D360C();

        goto LABEL_26;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v21 == enum case for Sport.basketball(_:))
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

  v35 = enum case for Sport.soccer(_:);
  v36 = v21;
  result = [objc_opt_self() sharedInstance];
  v37 = result;
  if (v36 == v35)
  {
    if (result)
    {
      v38 = sub_1000D35FC();
      v39 = [v37 localizedStringForKey:v38];

      v22 = a1;
      v32 = v55;
      v31 = v56;
      if (v39)
      {
        v27 = sub_1000D360C();

        goto LABEL_26;
      }

LABEL_18:
      v27 = 0;
LABEL_26:
      sub_1000D2E7C();
      sub_1000D2E5C();
      (*(v53 + 8))(v9, v54);
      if ((*(v32 + 48))(v6, 1, v31) == 1)
      {
        sub_10000F938(v6, &qword_100122E90);
        v44 = sub_1000D2F7C();
        (*(*(v44 - 8) + 8))(v57, v44);
        v45 = sub_1000D2E8C();
        (*(*(v45 - 8) + 8))(v22, v45);
      }

      else
      {
        v46 = v52;
        (*(v32 + 32))(v52, v6, v31);
        if (qword_1001221B8 != -1)
        {
          swift_once();
        }

        v47 = qword_100126920;
        isa = sub_1000D197C().super.isa;
        v49 = [v47 stringFromDate:isa];

        sub_1000D360C();
        v50 = sub_1000D2F7C();
        (*(*(v50 - 8) + 8))(v57, v50);
        v51 = sub_1000D2E8C();
        (*(*(v51 - 8) + 8))(v22, v51);
        (*(v32 + 8))(v46, v31);
      }

      return v27;
    }

    goto LABEL_35;
  }

  if (result)
  {
    v42 = sub_1000D35FC();
    v43 = [v37 localizedStringForKey:v42];

    v22 = a1;
    if (v43)
    {
      v27 = sub_1000D360C();
    }

    else
    {
      v27 = 0;
    }

    (*(v13 + 8))(v15, v12);
    v32 = v55;
    v31 = v56;
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100096EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a1;
  v156 = sub_1000D2E0C();
  v161 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D318C();
  v163 = *(v6 - 8);
  v164 = v6;
  v7 = __chkstk_darwin(v6);
  v149 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v148 = &v121 - v10;
  v11 = __chkstk_darwin(v9);
  v144 = &v121 - v12;
  __chkstk_darwin(v11);
  v158 = (&v121 - v13);
  v14 = sub_1000D2E4C();
  v150 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v146 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v121 - v17;
  v159 = sub_1000D2D9C();
  v166 = *(v159 - 8);
  v19 = __chkstk_darwin(v159);
  v147 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v145 = &v121 - v22;
  v23 = __chkstk_darwin(v21);
  v152 = &v121 - v24;
  __chkstk_darwin(v23);
  v26 = &v121 - v25;
  v27 = sub_1000D31AC();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v154 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v121 - v32;
  __chkstk_darwin(v31);
  v35 = &v121 - v34;
  sub_1000D2DBC();
  v167 = v28;
  v36 = *(v28 + 16);
  v165 = v35;
  v160 = v27;
  v151 = v36;
  v36(v33, v35, v27);
  sub_1000D2EFC();
  v157 = a2;
  result = sub_1000D2DAC();
  if (*(result + 16))
  {
    v38 = v150;
    v39 = *(v150 + 16);
    v129 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v143 = v14;
    v130 = v39;
    v39(v18, result + v129, v14);

    v142 = sub_1000D2D6C();
    v141 = v40;
    v41 = sub_1000D2D7C();
    sub_1000D319C();
    v42 = v33;
    if (*(v41 + 16) && (v43 = sub_100023678(v158), (v44 & 1) != 0))
    {
      v45 = *(*(v41 + 56) + 8 * v43);
      v46 = v158;
      v158 = *(v163 + 8);
      (v158)(v46, v164);
    }

    else
    {

      v47 = v158;
      v158 = *(v163 + 8);
      (v158)(v47, v164);
      v45 = 0;
    }

    v169 = v45;
    v140 = sub_1000D39BC();
    v139 = v48;
    v138 = sub_1000D2DDC();
    v137 = v49;
    v50 = v155;
    sub_1000D2E1C();
    v136 = sub_1000D2DEC();
    v135 = v51;
    v52 = *(v161 + 8);
    v161 += 8;
    v128 = v52;
    v52(v50, v156);
    v134 = sub_1000D2D6C();
    v133 = v53;
    v126 = sub_1000D2D8C();
    v54 = sub_1000D2E3C();
    v56 = Color.init(hex:)(v54, v55);
    if (!v56)
    {
      v56 = sub_1000D283C();
    }

    v132 = v56;
    v57 = sub_1000D2E2C();
    v58 = v38;
    v59 = v18;
    v60 = v143;
    v127 = *(v38 + 8);
    v127(v59, v143);
    v61 = *(v166 + 8);
    v166 += 8;
    v131 = v61;
    v61(v26, v159);
    v62 = *(v167 + 8);
    v63 = v42;
    v64 = v160;
    v167 += 8;
    v153 = v62;
    v62(v63, v160);
    v168 = v57 & 1;
    v151(v154, v165, v64);
    v65 = v152;
    sub_1000D2F0C();
    result = sub_1000D2DAC();
    if (*(result + 16) >= 2uLL)
    {
      LODWORD(v151) = v57 & 1;
      v66 = v146;
      v130(v146, result + v129 + *(v58 + 72), v60);

      v150 = sub_1000D2D6C();
      v130 = v67;
      v68 = sub_1000D2D7C();
      v69 = v144;
      sub_1000D319C();
      if (*(v68 + 16) && (v70 = sub_100023678(v69), (v71 & 1) != 0))
      {
        v72 = *(*(v68 + 56) + 8 * v70);
        (v158)(v69, v164);
      }

      else
      {

        (v158)(v69, v164);
        v72 = 0;
      }

      v169 = v72;
      v144 = sub_1000D39BC();
      v129 = v73;
      v125 = sub_1000D2DDC();
      v124 = v74;
      v75 = v155;
      sub_1000D2E1C();
      v123 = sub_1000D2DEC();
      v122 = v76;
      v128(v75, v156);
      v161 = sub_1000D2D6C();
      v156 = v77;
      LODWORD(v155) = sub_1000D2D8C();
      v78 = sub_1000D2E3C();
      v80 = Color.init(hex:)(v78, v79);
      if (!v80)
      {
        v80 = sub_1000D283C();
      }

      v81 = v80;
      v82 = sub_1000D2E2C();
      v127(v66, v60);
      v83 = v159;
      v84 = v131;
      v131(v65, v159);
      v153(v154, v160);
      v85 = v145;
      v86 = v162;
      sub_1000D2EFC();
      v87 = sub_1000D2D7C();
      v84(v85, v83);
      v88 = v148;
      sub_1000D319C();
      if (*(v87 + 16) && (v89 = sub_100023678(v88), (v90 & 1) != 0))
      {
        v91 = v88;
        v92 = *(*(v87 + 56) + 8 * v89);
        (v158)(v91, v164);
      }

      else
      {

        (v158)(v88, v164);
        v92 = 0;
      }

      v93 = v147;
      sub_1000D2F0C();
      v94 = sub_1000D2D7C();
      v84(v93, v159);
      v95 = v149;
      sub_1000D319C();
      if (*(v94 + 16) && (v96 = sub_100023678(v95), (v97 & 1) != 0))
      {
        v98 = *(*(v94 + 56) + 8 * v96);
        (v158)(v95, v164);

        if (v98 >= v92)
        {
LABEL_22:
          if (v92 >= v98)
          {
            v101 = 1.0;
            if (v168)
            {
              v100 = 2.0;
            }

            else
            {
              v100 = 1.0;
            }

            if (v168)
            {
              v99 = 1.0;
            }

            else
            {
              v99 = 2.0;
            }
          }

          else
          {
            v99 = 2.0;
            v100 = 1.0;
            v101 = 0.6;
          }

          v102 = 1.0;
          goto LABEL_33;
        }
      }

      else
      {

        (v158)(v95, v164);
        v98 = 0;
        if (v92 <= 0)
        {
          goto LABEL_22;
        }
      }

      v99 = 1.0;
      v100 = 2.0;
      v102 = 0.6;
      v101 = 1.0;
LABEL_33:
      v103 = v155 & 1;
      v104 = v126 & 1;
      sub_1000D2CEC();
      v105 = v157;
      v106 = sub_1000D2CDC();
      v108 = v107;
      v109 = sub_1000D2E8C();
      (*(*(v109 - 8) + 8))(v105, v109);
      v110 = sub_1000D2F7C();
      (*(*(v110 - 8) + 8))(v86, v110);
      result = (v153)(v165, v160);
      v111 = v141;
      *a3 = v142;
      *(a3 + 8) = v111;
      v112 = v139;
      *(a3 + 16) = v140;
      *(a3 + 24) = v112;
      v113 = v137;
      *(a3 + 32) = v138;
      *(a3 + 40) = v113;
      v114 = v133;
      *(a3 + 48) = v134;
      *(a3 + 56) = v114;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      v115 = v135;
      *(a3 + 80) = v136;
      *(a3 + 88) = v115;
      *(a3 + 96) = v151;
      *(a3 + 104) = v132;
      *(a3 + 112) = v104;
      v116 = v130;
      *(a3 + 120) = v150;
      *(a3 + 128) = v116;
      v117 = v129;
      *(a3 + 136) = v144;
      *(a3 + 144) = v117;
      v118 = v124;
      *(a3 + 152) = v125;
      *(a3 + 160) = v118;
      v119 = v156;
      *(a3 + 168) = v161;
      *(a3 + 176) = v119;
      *(a3 + 184) = 0;
      *(a3 + 192) = 0;
      v120 = v122;
      *(a3 + 200) = v123;
      *(a3 + 208) = v120;
      *(a3 + 216) = v82 & 1;
      *(a3 + 224) = v81;
      *(a3 + 232) = v103;
      *(a3 + 240) = v100;
      *(a3 + 248) = v99;
      *(a3 + 256) = v101;
      *(a3 + 264) = v102;
      *(a3 + 272) = v106;
      *(a3 + 280) = v108;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100097BC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100097C0C()
{
  result = qword_100126968;
  if (!qword_100126968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126968);
  }

  return result;
}

__n128 sub_100097C60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100097C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100097CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100097D58@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = sub_100006334(&qword_100126970);
  __chkstk_darwin(v30);
  v3 = (&v29 - v2);
  v4 = sub_100006334(&qword_100126978);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v31 = sub_100006334(&qword_100126980);
  __chkstk_darwin(v31);
  v8 = &v29 - v7;
  v9 = sub_100006334(&qword_100126988);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = *v1;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v21 = sub_1000D21BC();
      v33[0] = 1;
      sub_100098A28(&v34);
      *&v44[7] = v34;
      *&v44[23] = v35;
      *&v44[39] = v36;
      *&v44[55] = v37;
      v42 = v21;
      LOBYTE(v43[0]) = v33[0];
      *(v43 + 1) = *v44;
      *(&v43[1] + 1) = *&v44[16];
      *(&v43[2] + 1) = *&v44[32];
      *(&v43[3] + 1) = *&v44[48];
      *&v43[4] = *(&v37 + 1);
      *v33 = v21;
      *&v33[16] = v43[0];
      *&v33[32] = v43[1];
      *&v33[48] = v43[2];
      *&v33[64] = v43[3];
      *&v33[80] = *(&v37 + 1);
      v46 = 0;
      v33[88] = 0;
      v22 = &qword_100126998;
      sub_10000F8D0(&v42, v44, &qword_100126998);
    }

    else
    {
      v26 = sub_1000D21BC();
      v44[0] = 1;
      v27 = *(v1 + 10);
      sub_1000D2B5C();
      sub_1000D1C8C();
      *&v45[6] = v34;
      *&v45[22] = v35;
      *&v45[38] = v36;
      v42 = v26;
      LOBYTE(v43[0]) = v44[0];
      *(&v43[0] + 1) = v27;
      LOWORD(v43[1]) = 256;
      *(&v43[1] + 2) = *v45;
      *(&v43[2] + 2) = *&v45[16];
      *(&v43[3] + 2) = *&v45[32];
      *&v43[4] = *(&v36 + 1);
      *v33 = v26;
      *&v33[16] = v43[0];
      *&v33[32] = v43[1];
      *&v33[48] = v43[2];
      *&v33[64] = v43[3];
      *&v33[80] = *(&v36 + 1);
      v46 = 1;
      v33[88] = 1;

      v22 = &qword_100126990;
      sub_10000F8D0(&v42, v44, &qword_100126990);
    }

    sub_100006334(&qword_100126998);
    sub_100006334(&qword_100126990);
    sub_100098DDC(&qword_1001269A0, &qword_100126998);
    sub_100098DDC(&qword_1001269A8, &qword_100126990);
    sub_1000D229C();
    v23 = *&v44[48];
    v3[2] = *&v44[32];
    v3[3] = v23;
    v3[4] = *&v44[64];
    *(v3 + 73) = *&v44[73];
    v24 = *&v44[16];
    *v3 = *v44;
    v3[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_1001269B0);
    sub_100098D20();
    sub_100098E30();
    sub_1000D229C();
    v19 = &v42;
    v20 = v22;
  }

  else
  {
    v29 = v10;
    if (v13)
    {
      *v12 = sub_1000D21BC();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v25 = sub_100006334(&qword_1001269E8);
      sub_100098780(v1, &v12[*(v25 + 44)]);
      sub_10000F8D0(v12, v6, &qword_100126988);
      swift_storeEnumTagMultiPayload();
      sub_100006334(&qword_1001269D0);
      sub_100098DDC(&qword_1001269C0, &qword_100126988);
      sub_100098DDC(&qword_1001269C8, &qword_1001269D0);
      sub_1000D229C();
      sub_10000F8D0(v8, v3, &qword_100126980);
      swift_storeEnumTagMultiPayload();
      sub_100006334(&qword_1001269B0);
      sub_100098D20();
      sub_100098E30();
      sub_1000D229C();
      sub_10000F938(v8, &qword_100126980);
      v19 = v12;
      v20 = &qword_100126988;
    }

    else
    {
      v14 = sub_1000D21BC();
      v46 = 1;
      sub_1000985E0(v1, v44);
      v38 = *&v44[64];
      v39 = *&v44[80];
      v40 = *&v44[96];
      v41 = *&v44[112];
      v34 = *v44;
      v35 = *&v44[16];
      v36 = *&v44[32];
      v37 = *&v44[48];
      v42 = *v44;
      v43[0] = *&v44[16];
      v43[1] = *&v44[32];
      v43[2] = *&v44[48];
      v43[3] = *&v44[64];
      v43[4] = *&v44[80];
      v43[5] = *&v44[96];
      v43[6] = *&v44[112];
      sub_10000F8D0(&v34, v33, &qword_1001269E0);
      sub_10000F938(&v42, &qword_1001269E0);
      *&v33[71] = v38;
      *&v33[87] = v39;
      *&v33[103] = v40;
      *&v33[119] = v41;
      *&v33[7] = v34;
      *&v33[23] = v35;
      *&v33[39] = v36;
      *&v33[55] = v37;
      *&v44[113] = *&v33[96];
      *&v44[97] = *&v33[80];
      *&v44[49] = *&v33[32];
      *&v44[33] = *&v33[16];
      *&v44[129] = *&v33[112];
      *&v44[65] = *&v33[48];
      *v44 = v14;
      *&v44[8] = 0;
      v44[16] = v46;
      *&v44[144] = *(&v41 + 1);
      *&v44[81] = *&v33[64];
      *&v44[17] = *v33;
      v15 = *&v44[112];
      *(v6 + 6) = *&v44[96];
      *(v6 + 7) = v15;
      *(v6 + 8) = *&v44[128];
      *(v6 + 18) = *&v44[144];
      v16 = *&v44[48];
      *(v6 + 2) = *&v44[32];
      *(v6 + 3) = v16;
      v17 = *&v44[80];
      *(v6 + 4) = *&v44[64];
      *(v6 + 5) = v17;
      v18 = *&v44[16];
      *v6 = *v44;
      *(v6 + 1) = v18;
      swift_storeEnumTagMultiPayload();
      sub_10000F8D0(v44, v33, &qword_1001269D0);
      sub_100006334(&qword_1001269D0);
      sub_100098DDC(&qword_1001269C0, &qword_100126988);
      sub_100098DDC(&qword_1001269C8, &qword_1001269D0);
      sub_1000D229C();
      sub_10000F8D0(v8, v3, &qword_100126980);
      swift_storeEnumTagMultiPayload();
      sub_100006334(&qword_1001269B0);
      sub_100098D20();
      sub_100098E30();
      sub_1000D229C();
      sub_10000F938(v44, &qword_1001269D0);
      v19 = v8;
      v20 = &qword_100126980;
    }
  }

  return sub_10000F938(v19, v20);
}

uint64_t sub_1000985E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v4 = v18;
  v5 = v20;
  v6 = v22;
  v7 = v23;
  v29 = 1;
  v28 = v19;
  v27 = v21;
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v17[6] = v24;
  *&v17[22] = v25;
  *&v17[38] = v26;
  v8 = v19;
  v9 = v21;
  *v30 = v3;
  *&v30[8] = 256;
  v10 = *v17;
  *&v30[10] = *v17;
  v11 = *&v17[16];
  *&v30[26] = *&v17[16];
  v12 = *&v17[32];
  *&v30[42] = *&v17[32];
  *&v30[56] = *(&v26 + 1);
  v31 = v3;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v13 = *&v30[48];
  *(a2 + 96) = *&v30[32];
  *(a2 + 112) = v13;
  v14 = *&v30[16];
  *(a2 + 64) = *v30;
  *(a2 + 80) = v14;
  v32 = 256;
  *&v35[14] = *&v17[46];
  *v35 = v12;
  v34 = v11;
  v33 = v10;

  sub_10000F8D0(v30, v16, &qword_100126A08);
  return sub_10000F938(&v31, &qword_100126A08);
}

uint64_t sub_100098780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100006334(&qword_1001269F0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v25 = v29;
  v26 = v27;
  v23 = v32;
  v24 = v31;
  v38 = 1;
  v37 = v28;
  v36 = v30;
  v13 = &v10[*(sub_100006334(&qword_1001269F8) + 36)];
  v14 = *(sub_1000D1E1C() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_1000D217C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v13 = v11;
  *(v13 + 1) = v11;
  *&v13[*(sub_100006334(&qword_100124378) + 36)] = 256;
  *v10 = v12;
  *(v10 + 4) = 256;

  sub_1000D2B5C();
  sub_1000D1C8C();
  v17 = &v10[*(v5 + 44)];
  v18 = v34;
  *v17 = v33;
  *(v17 + 1) = v18;
  *(v17 + 2) = v35;
  LOBYTE(v13) = v38;
  LOBYTE(v14) = v37;
  LOBYTE(v5) = v36;
  sub_10000F8D0(v10, v8, &qword_1001269F0);
  *a2 = 0;
  *(a2 + 8) = v13;
  v19 = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v14;
  *(a2 + 32) = v19;
  *(a2 + 40) = v5;
  v20 = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v20;
  v21 = sub_100006334(&qword_100126A00);
  sub_10000F8D0(v8, a2 + *(v21 + 48), &qword_1001269F0);
  sub_10000F938(v10, &qword_1001269F0);
  return sub_10000F938(v8, &qword_1001269F0);
}

uint64_t sub_100098A28@<X0>(uint64_t a1@<X8>)
{
  sub_1000D2CBC();
  sub_10000F320();
  v2 = sub_1000D260C();
  v4 = v3;
  v6 = v5;
  v34 = objc_opt_self();
  v7 = [v34 labelColor];
  sub_1000D27DC();
  v8 = sub_1000D254C();
  v10 = v9;
  v12 = v11;

  sub_10000F374(v2, v4, v6 & 1);

  sub_1000D23CC();
  v13 = sub_1000D257C();
  v36 = v14;
  v37 = v13;
  v35 = v15;
  v38 = v16;

  sub_10000F374(v8, v10, v12 & 1);

  sub_1000D2CCC();
  v17 = sub_1000D260C();
  v19 = v18;
  LOBYTE(v8) = v20;
  v21 = [v34 labelColor];
  sub_1000D27DC();
  v22 = sub_1000D254C();
  v24 = v23;
  LOBYTE(v4) = v25;

  sub_10000F374(v17, v19, v8 & 1);

  sub_1000D23CC();
  v26 = sub_1000D257C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10000F374(v22, v24, v4 & 1);

  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = v30 & 1;
  *(a1 + 56) = v32;
  sub_10004328C(v37, v36, v35 & 1);

  sub_10004328C(v26, v28, v30 & 1);

  sub_10000F374(v26, v28, v30 & 1);

  sub_10000F374(v37, v36, v35 & 1);
}

unint64_t sub_100098D20()
{
  result = qword_1001269B8;
  if (!qword_1001269B8)
  {
    sub_10000637C(&qword_100126980);
    sub_100098DDC(&qword_1001269C0, &qword_100126988);
    sub_100098DDC(&qword_1001269C8, &qword_1001269D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001269B8);
  }

  return result;
}

uint64_t sub_100098DDC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000637C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100098E30()
{
  result = qword_1001269D8;
  if (!qword_1001269D8)
  {
    sub_10000637C(&qword_1001269B0);
    sub_100098DDC(&qword_1001269A0, &qword_100126998);
    sub_100098DDC(&qword_1001269A8, &qword_100126990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001269D8);
  }

  return result;
}

unint64_t sub_100098F00()
{
  result = qword_100126A10;
  if (!qword_100126A10)
  {
    sub_10000637C(&qword_100126A18);
    sub_100098D20();
    sub_100098E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126A10);
  }

  return result;
}

unint64_t sub_100098F90()
{
  result = qword_100126A20;
  if (!qword_100126A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126A20);
  }

  return result;
}

uint64_t sub_100098FF4(char *a1)
{
  v2 = sub_1000D329C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D325C();
  sub_1000D326C();
  v6 = *(v3 + 8);
  v6(a1, v2);
  return v6(v5, v2);
}

double sub_100099144@<D0>(uint64_t a1@<X8>)
{
  sub_100006334(&qword_100126A28);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000E2080;
  type metadata accessor for CGColor(0);
  sub_1000D1A3C();
  *(v2 + 32) = sub_1000D289C();
  sub_1000D1A3C();
  *(v2 + 40) = sub_1000D289C();
  sub_1000D2AFC();
  sub_1000D2BEC();
  sub_1000D2BFC();
  sub_1000D1D7C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000E2080;
  *(v3 + 32) = sub_1000D283C();
  *(v3 + 40) = sub_1000D283C();
  sub_1000D2AFC();
  sub_1000D2BEC();
  sub_1000D2BFC();
  sub_1000D1D7C();
  sub_1000D1CAC();
  sub_1000D1CAC();
  sub_1000D1C9C();

  sub_1000D1CBC();
  v4 = sub_1000D1CCC();

  *a1 = 0x3FFC71C71C71C71CLL;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = 16.0;
  *(a1 + 88) = xmmword_1000EAAB0;
  *(a1 + 104) = v4;
  return result;
}

uint64_t sub_100099378(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v2 = sub_1000D329C();
  v14 = *(v2 - 8);
  v15 = v2;
  __chkstk_darwin(v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000D323C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 104);
  v9(v8, enum case for WidgetFamily.systemLarge(_:), v5);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v10 = *(v6 + 8);
  result = v10(v8, v5);
  if (v18 != v17)
  {
    v9(v8, enum case for WidgetFamily.systemSmall(_:), v5);
    sub_1000D369C();
    sub_1000D369C();
    v10(v8, v5);
    v13 = enum case for WidgetFamily.systemMedium(_:);
    if (v18 == v17 || (v9(v8, v13, v5), sub_1000D369C(), sub_1000D369C(), v10(v8, v5), v18 == v17))
    {
      sub_1000D325C();
      sub_1000D326C();
      (*(v14 + 8))(v4, v15);
      v9(v8, v13, v5);
      sub_1000D369C();
      sub_1000D369C();
      v10(v8, v5);
    }

    (*(v14 + 16))(v4, v16, v15);
    return sub_100098FF4(v4);
  }

  return result;
}

char *sub_10009973C(uint64_t a1)
{
  v3 = sub_1000D323C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
  v8 = type metadata accessor for TVWidgetEntry();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
  v10 = sub_1000D19FC();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__error] = 0;
  v11 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation_context;
  v12 = sub_1000D346C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v1[v11], a1, v12);
  Operation = type metadata accessor for TVWidgetFetchOperation();
  v44.receiver = v1;
  v44.super_class = Operation;
  v15 = objc_msgSendSuper2(&v44, "init");
  v41 = a1;
  sub_1000D344C();
  sub_10009E014(&qword_100125998, &type metadata accessor for WidgetFamily);
  v16 = sub_1000D39BC();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  v42 = v16;
  v43 = v18;

  v45._countAndFlagsBits = 45;
  v45._object = 0xE100000000000000;
  sub_1000D366C(v45);

  v20 = v42;
  v19 = v43;
  v21 = &v15[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
  if (*&v15[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
  {
    v22 = *v21;
    v23 = *&v15[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  }

  else
  {
    sub_10007CB04(0, &qword_100122C58);
    v24 = sub_1000D381C();
    sub_100006334(&qword_100122C50);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000E0440;
    *(v25 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v25 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
    *(v25 + 32) = v15;
    v26 = v15;
    v27 = sub_1000D382C();

    v22 = sub_1000D360C();
    v23 = v28;
  }

  v42 = v20;
  v43 = v19;

  v46._countAndFlagsBits = v22;
  v46._object = v23;
  sub_1000D366C(v46);

  v29 = v43;
  *v21 = v42;
  v21[1] = v29;

  result = sub_100002C80();
  if (result)
  {
    v31 = result;
    sub_100006334(&qword_100122C50);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000E0440;
    v33 = v21[1];
    if (v33)
    {
      v34 = *v21;
    }

    else
    {
      v40 = xmmword_1000E0440;
      sub_10007CB04(0, &qword_100122C58);
      v35 = sub_1000D381C();
      v36 = swift_allocObject();
      *(v36 + 16) = v40;
      *(v36 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v36 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
      *(v36 + 32) = v15;
      v37 = v15;
      v38 = sub_1000D382C();

      v34 = sub_1000D360C();
      v33 = v39;
    }

    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100018744();
    *(v32 + 32) = v34;
    *(v32 + 40) = v33;
    sub_1000D37AC();
    sub_1000D1B2C();

    (*(v13 + 8))(v41, v12);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100099CA0()
{
  v1 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation_context;
  v2 = sub_1000D346C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry, &qword_1001257C8);
  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate, &qword_100122E90);
}

id sub_100099D58()
{
  result = sub_100002C80();
  if (result)
  {
    v2 = result;
    sub_100006334(&qword_100122C50);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1000E0440;
    v4 = *&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
    if (v4)
    {
      v5 = *&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
      v6 = v0;
      v7 = v4;
    }

    else
    {
      sub_10007CB04(0, &qword_100122C58);
      v8 = v0;
      v9 = v0;
      v10 = sub_1000D381C();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000E0440;
      *(v11 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v11 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
      *(v11 + 32) = v8;
      v12 = v8;
      v0 = v9;
      v13 = sub_1000D382C();

      v5 = sub_1000D360C();
      v7 = v14;
    }

    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100018744();
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;

    sub_1000D37AC();
    sub_1000D1B2C();

    v15.receiver = v0;
    v15.super_class = type metadata accessor for TVWidgetFetchOperation();
    return objc_msgSendSuper2(&v15, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TVWidgetFetchOperation()
{
  result = qword_100126A70;
  if (!qword_100126A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009A098()
{
  v1 = v0;
  v2 = sub_100006334(&qword_100122E90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v55 - v6;
  v8 = sub_100006334(&qword_1001257C8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = sub_1000D323C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  sub_1000D1A7C();
  v21 = sub_1000D1A6C();
  v58 = v5;
  if (!v21)
  {
    v25 = sub_100002C80();
    if (v25)
    {
      v26 = v25;
      sub_100006334(&qword_100122C50);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000E0440;
      if (*&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
      {
        v28 = *&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
        v29 = *&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
      }

      else
      {
        v57 = xmmword_1000E0440;
        sub_10007CB04(0, &qword_100122C58);
        v30 = sub_1000D381C();
        v31 = swift_allocObject();
        *(v31 + 16) = v57;
        *(v31 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v31 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
        *(v31 + 32) = v0;
        v32 = v0;
        v33 = sub_1000D382C();

        v28 = sub_1000D360C();
        v29 = v34;
      }

      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100018744();
      *(v27 + 32) = v28;
      *(v27 + 40) = v29;

      sub_1000D37AC();
      sub_1000D1B2C();

      sub_1000D19EC();
      v35 = type metadata accessor for TVWidgetEntry();
      v36 = v35;
      *&v13[*(v35 + 20)] = 0;
      v13[*(v35 + 24)] = 1;
      goto LABEL_13;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  sub_1000D344C();
  v22 = (*(v15 + 88))(v20, v14);
  if (v22 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v22 == enum case for WidgetFamily.systemMedium(_:))
    {
      v24 = 2;
      v23 = 1;
      goto LABEL_16;
    }

    if (v22 == enum case for WidgetFamily.systemLarge(_:))
    {
      v24 = 3;
      v23 = 2;
      goto LABEL_16;
    }

    if (v22 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v24 = 7;
      v23 = 3;
      goto LABEL_16;
    }

    v56 = *(v15 + 8);
    v56(v20, v14);
    *&v57 = sub_100002C80();
    if (v57)
    {
      v55 = sub_100006334(&qword_100122C50);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1000E2080;
      sub_1000D344C();
      v46 = sub_1000D322C();
      v56(v18, v14);
      *(v45 + 56) = &type metadata for Int;
      *(v45 + 64) = &protocol witness table for Int;
      *(v45 + 32) = v46;
      if (*&v1[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
      {
        v47 = *&v1[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
        v48 = *&v1[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
      }

      else
      {
        sub_10007CB04(0, &qword_100122C58);
        v49 = sub_1000D381C();
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1000E0440;
        *(v50 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v50 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
        *(v50 + 32) = v1;
        v51 = v1;
        v52 = sub_1000D382C();

        v47 = sub_1000D360C();
        v48 = v53;
      }

      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = sub_100018744();
      *(v45 + 72) = v47;
      *(v45 + 80) = v48;

      sub_1000D37AC();
      v54 = v57;
      sub_1000D1B2C();

      sub_1000D19EC();
      v35 = type metadata accessor for TVWidgetEntry();
      v36 = v35;
      *&v13[*(v35 + 20)] = 0;
      v13[*(v35 + 24)] = 2;
LABEL_13:
      (*(*(v35 - 8) + 56))(v13, 0, 1, v36);
      objc_sync_enter(v1);
      sub_10000F8D0(v13, v11, &qword_1001257C8);
      v37 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
      swift_beginAccess();
      sub_10007701C(v11, &v1[v37], &qword_1001257C8);
      swift_endAccess();
      objc_sync_exit(v1);
      sub_10000F938(v13, &qword_1001257C8);
      sub_1000D19AC();
      v38 = sub_1000D19FC();
      (*(*(v38 - 8) + 56))(v7, 0, 1, v38);
      objc_sync_enter(v1);
      v39 = v58;
      sub_10000F8D0(v7, v58, &qword_100122E90);
      v40 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
      swift_beginAccess();
      sub_10007701C(v39, &v1[v40], &qword_100122E90);
      swift_endAccess();
      objc_sync_exit(v1);
      sub_10000F938(v7, &qword_100122E90);
      sub_1000181E8();
      return;
    }

    goto LABEL_24;
  }

  v23 = 0;
  v24 = 3;
LABEL_16:
  v41 = objc_opt_self();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v24;
  aBlock[4] = sub_10009DE18;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009DBA8;
  aBlock[3] = &unk_10011C708;
  v44 = _Block_copy(aBlock);

  [v41 fetchUpNext:v23 withCompletion:v44];
  _Block_release(v44);
}

id sub_10009A964(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100006334(&qword_100122DB8);
  v8 = __chkstk_darwin(v7 - 8);
  v275 = &v258 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v277 = &v258 - v11;
  __chkstk_darwin(v10);
  v264 = &v258 - v12;
  v279 = sub_1000D342C();
  v265 = *(v279 - 8);
  __chkstk_darwin(v279);
  v278 = &v258 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_1000D2C2C();
  v270 = *(v271 - 8);
  __chkstk_darwin(v271);
  v268 = &v258 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1000D2C4C();
  v267 = *(v269 - 8);
  __chkstk_darwin(v269);
  v266 = &v258 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100006334(&qword_1001264F8);
  __chkstk_darwin(v16 - 8);
  v273 = &v258 - v17;
  v18 = sub_100006334(&qword_1001257C8);
  v19 = __chkstk_darwin(v18 - 8);
  v280 = &v258 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v281 = &v258 - v21;
  v22 = sub_100006334(&qword_100122E90);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v258 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v289 = &v258 - v27;
  v28 = __chkstk_darwin(v26);
  v290 = &v258 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v258 - v31;
  __chkstk_darwin(v30);
  v34 = &v258 - v33;
  v35 = sub_1000D19FC();
  v291 = *(v35 - 8);
  v36 = __chkstk_darwin(v35);
  v276 = &v258 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = (&v258 - v39);
  __chkstk_darwin(v38);
  v296 = &v258 - v41;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v43 = result;
  *&v295 = v35;
  *&v294 = result;
  if (!a1)
  {
    v47 = v291;
    v287 = *(v291 + 56);
    v287(v34, 1, 1, v35);
    goto LABEL_8;
  }

  v44 = [a1 expirationDate];
  if (v44)
  {
    v45 = v44;
    sub_1000D19CC();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v291;
  v287 = *(v291 + 56);
  v287(v32, v46, 1, v35);
  sub_10009DFA4(v32, v34);
  v292 = *(v47 + 48);
  if (v292(v34, 1, v35) == 1)
  {
LABEL_8:
    sub_1000D19AC();
    v292 = *(v47 + 48);
    if (v292(v34, 1, v35) != 1)
    {
      sub_10000F938(v34, &qword_100122E90);
    }

    if (!a2)
    {
      if (!a1)
      {
LABEL_140:
        result = sub_100002C80();
        if (result)
        {
          v239 = result;
          sub_100006334(&qword_100122C50);
          v240 = swift_allocObject();
          *(v240 + 16) = xmmword_1000E0440;
          if (*(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8))
          {
            v241 = *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
            v242 = *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
          }

          else
          {
            v295 = xmmword_1000E0440;
            sub_10007CB04(0, &qword_100122C58);
            v243 = v43;
            v244 = sub_1000D381C();
            v245 = swift_allocObject();
            *(v245 + 16) = v295;
            *(v245 + 56) = type metadata accessor for TVWidgetAsyncOperation();
            *(v245 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
            *(v245 + 32) = v243;
            v246 = v243;
            v247 = sub_1000D382C();

            v241 = sub_1000D360C();
            v242 = v248;
          }

          *(v240 + 56) = &type metadata for String;
          *(v240 + 64) = sub_100018744();
          *(v240 + 32) = v241;
          *(v240 + 40) = v242;

          sub_1000D37AC();
          sub_1000D1B2C();

          v249 = v281;
          sub_1000D19EC();
          v250 = type metadata accessor for TVWidgetEntry();
          *(v249 + *(v250 + 20)) = 0;
          *(v249 + *(v250 + 24)) = 4;
          (*(*(v250 - 8) + 56))(v249, 0, 1, v250);
          objc_sync_enter(v43);
          v251 = v280;
          sub_10000F8D0(v249, v280, &qword_1001257C8);
          v252 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
          swift_beginAccess();
          sub_10007701C(v251, v43 + v252, &qword_1001257C8);
          swift_endAccess();
          objc_sync_exit(v43);
          sub_10000F938(v249, &qword_1001257C8);
          v253 = v291;
          v254 = v290;
          v255 = v296;
          (*(v291 + 16))(v290, v296, v35);
          v287(v254, 0, 1, v35);
          objc_sync_enter(v43);
          v256 = v289;
          sub_10000F8D0(v254, v289, &qword_100122E90);
          v257 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
          swift_beginAccess();
          sub_10007701C(v256, v43 + v257, &qword_100122E90);
          swift_endAccess();
          objc_sync_exit(v43);
          sub_10000F938(v254, &qword_100122E90);
          sub_1000181E8();

          return (*(v253 + 8))(v255, v35);
        }

        goto LABEL_156;
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  (*(v47 + 32))(v296, v34, v35);
  if (!a2)
  {
LABEL_17:
    v57 = [a1 items];
    v58 = sub_10007CB04(0, &qword_100126A80);
    v59 = sub_1000D36BC();

    v60 = (v59 >> 62);
    if (v59 >> 62)
    {
      goto LABEL_138;
    }

    v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v61)
    {
LABEL_139:

      goto LABEL_140;
    }

    while (1)
    {
      if (a4 < 0)
      {
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v61 >= a4)
      {
        v62 = a4;
      }

      else
      {
        v62 = v61;
      }

      if (v61 < 0)
      {
        v62 = a4;
      }

      v63 = a4 ? v62 : 0;
      if (v60)
      {
        if (v59 < 0)
        {
          a4 = v59;
        }

        else
        {
          a4 = v59 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1000D397C() < 0)
        {
          goto LABEL_148;
        }

        v64 = sub_1000D397C();
      }

      else
      {
        v64 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v64 < v63)
      {
        goto LABEL_147;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {

        if (v63)
        {
          v79 = 0;
          do
          {
            v80 = v79 + 1;
            sub_1000D38EC(v79);
            v79 = v80;
          }

          while (v63 != v80);
        }
      }

      else
      {
      }

      v274 = v59;
      if (v60)
      {

        v259 = sub_1000D398C();
        v286 = v82;
        v59 = v83;
        v63 = v84 >> 1;
      }

      else
      {
        v81 = v59;
        v59 = 0;
        v259 = v81 & 0xFFFFFFFFFFFFFF8;
        v286 = ((v81 & 0xFFFFFFFFFFFFFF8) + 32);
      }

      a4 = &_swiftEmptyArrayStorage;
      v304 = &_swiftEmptyArrayStorage;
      if (v59 == v63)
      {
        break;
      }

      v285 = v291 + 48;
      v263 = (v291 + 32);
      v272 = (v291 + 8);
      *&v260 = v291 + 16;
      swift_unknownObjectRetain_n();
      v60 = &qword_100122E90;
      v282 = xmmword_1000E3AA0;
      v262 = xmmword_1000E0440;
      v258 = xmmword_1000E2080;
      v284 = v25;
      v288 = v40;
      *&v283 = v63;
      while (v59 < v63)
      {
        v95 = v286[v59];
        type metadata accessor for TVWidgetContentViewModel();
        swift_allocObject();
        v96 = v95;
        a4 = sub_10008A0FC(v96);

        sub_1000D36AC();
        if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000D36DC();
        }

        sub_1000D36EC();
        v293 = v304;
        v97 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
        swift_beginAccess();
        sub_10000F8D0(a4 + v97, v25, &qword_100122E90);
        if (v292(v25, 1, v35) == 1)
        {
          sub_10000F938(v25, &qword_100122E90);
        }

        else
        {
          (*v263)(v40, v25, v35);
          if (sub_1000D199C())
          {
            v98 = v276;
            sub_1000D19EC();
            v99 = sub_1000D198C();
            v100 = *v272;
            (*v272)(v98, v35);
            if (v99)
            {
              v101 = v296;
              v100(v296, v35);
              (*v260)(v101, v40, v35);
              result = sub_100002C80();
              if (!result)
              {
                goto LABEL_155;
              }

              v102 = result;
              sub_100006334(&qword_100122C50);
              v103 = swift_allocObject();
              *(v103 + 16) = v258;
              v104 = (v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
              v105 = v43;
              v106 = *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
              v261 = v100;
              if (v106)
              {
                v107 = *v104;
                v108 = v106;
              }

              else
              {
                sub_10007CB04(0, &qword_100122C58);
                v109 = v105;
                v110 = sub_1000D381C();
                v111 = swift_allocObject();
                *(v111 + 16) = v262;
                *(v111 + 56) = type metadata accessor for TVWidgetAsyncOperation();
                *(v111 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
                *(v111 + 32) = v109;
                v112 = v109;
                v113 = sub_1000D382C();

                v107 = sub_1000D360C();
                v108 = v114;
              }

              *(v103 + 56) = &type metadata for String;
              v115 = sub_100018744();
              *(v103 + 64) = v115;
              *(v103 + 32) = v107;
              *(v103 + 40) = v108;

              v116 = v273;
              sub_1000D1A1C();
              v117 = sub_1000D1A2C();
              (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
              v118 = sub_1000D194C();
              v120 = v119;
              sub_10000F938(v116, &qword_1001264F8);
              *(v103 + 96) = &type metadata for String;
              *(v103 + 104) = v115;
              *(v103 + 72) = v118;
              *(v103 + 80) = v120;
              sub_1000D37AC();
              sub_1000D1B2C();

              (v261)(v288, v295);
              v43 = v294;
            }

            else
            {
              v100(v40, v35);
            }
          }

          else
          {
            (*v272)(v40, v35);
          }
        }

        v121 = sub_100002C80();
        if (!v121)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v122 = v121;
        sub_100006334(&qword_100122C50);
        v123 = swift_allocObject();
        *(v123 + 16) = v282;
        v124 = (v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
        v125 = v43;
        v126 = *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
        if (v126)
        {
          v85 = *v124;
          v86 = v126;
        }

        else
        {
          sub_10007CB04(0, &qword_100122C58);
          v127 = v125;
          v128 = sub_1000D381C();
          v129 = swift_allocObject();
          *(v129 + 16) = v262;
          *(v129 + 56) = type metadata accessor for TVWidgetAsyncOperation();
          *(v129 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
          *(v129 + 32) = v127;
          v130 = v127;
          v131 = sub_1000D382C();

          v85 = sub_1000D360C();
          v86 = v132;
        }

        ++v59;
        *(v123 + 56) = &type metadata for String;
        v58 = sub_100018744();
        *(v123 + 64) = v58;
        *(v123 + 32) = v85;
        *(v123 + 40) = v86;

        v87 = [v96 identifier];
        v88 = sub_1000D360C();
        v90 = v89;

        *(v123 + 96) = &type metadata for String;
        *(v123 + 104) = v58;
        *(v123 + 72) = v88;
        *(v123 + 80) = v90;
        v91 = [v96 title];
        v92 = sub_1000D360C();
        v94 = v93;

        *(v123 + 136) = &type metadata for String;
        *(v123 + 144) = v58;
        *(v123 + 112) = v92;
        *(v123 + 120) = v94;
        sub_1000D37AC();
        sub_1000D1B2C();

        v63 = v283;
        v35 = v295;
        v43 = v294;
        v25 = v284;
        v40 = v288;
        v60 = &qword_100122E90;
        if (v283 == v59)
        {
          swift_unknownObjectRelease_n();
          a4 = v293;
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      v61 = sub_1000D397C();
      if (!v61)
      {
        goto LABEL_139;
      }
    }

LABEL_69:
    v133 = v281;
    sub_1000D19EC();
    v134 = type metadata accessor for TVWidgetEntry();
    *(v133 + *(v134 + 20)) = a4;
    *(v133 + *(v134 + 24)) = 4;
    (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
    v293 = a4;

    objc_sync_enter(v43);
    v135 = v280;
    sub_10000F8D0(v133, v280, &qword_1001257C8);
    v136 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
    swift_beginAccess();
    sub_10007701C(v135, v43 + v136, &qword_1001257C8);
    swift_endAccess();
    objc_sync_exit(v43);
    sub_10000F938(v133, &qword_1001257C8);
    v137 = v291 + 16;
    v138 = v290;
    (*(v291 + 16))(v290, v296, v35);
    *&v262 = v137 + 40;
    v287(v138, 0, 1, v35);
    objc_sync_enter(v43);
    v139 = v289;
    sub_10000F8D0(v138, v289, &qword_100122E90);
    v140 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
    swift_beginAccess();
    v263 = v140;
    sub_10007701C(v139, v43 + v140, &qword_100122E90);
    swift_endAccess();
    objc_sync_exit(v43);
    sub_10000F938(v138, &qword_100122E90);
    v25 = v43;
    v141 = [v25 isCancelled];
    v292 = v25;
    if (v141)
    {

      v142 = sub_100002C80();
      result = v274;
      if (v142)
      {

        sub_100006334(&qword_100122C50);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_1000E0440;
        if (*&v25[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
        {
          v144 = *&v25[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
          v145 = *&v25[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
        }

        else
        {
          v294 = xmmword_1000E0440;
          sub_10007CB04(0, &qword_100122C58);
          v150 = v25;
          v151 = sub_1000D381C();
          v152 = swift_allocObject();
          *(v152 + 16) = v294;
          *(v152 + 56) = type metadata accessor for TVWidgetAsyncOperation();
          *(v152 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
          *(v152 + 32) = v150;
          v153 = v150;
          v154 = sub_1000D382C();

          v25 = v292;
          v144 = sub_1000D360C();
          v145 = v155;
        }

        *(v143 + 56) = &type metadata for String;
        *(v143 + 64) = sub_100018744();
        *(v143 + 32) = v144;
        *(v143 + 40) = v145;

        sub_1000D37AC();
        sub_1000D1B2C();

        v156 = v290;
        sub_1000D19AC();
        v157 = v295;
        v287(v156, 0, 1, v295);
        objc_sync_enter(v25);
        v158 = v289;
        sub_10000F8D0(v156, v289, &qword_100122E90);
        v159 = v263;
        swift_beginAccess();
        sub_10007701C(v158, v159 + v43, &qword_100122E90);
        swift_endAccess();
        objc_sync_exit(v25);
        sub_10000F938(v156, &qword_100122E90);
        sub_1000181E8();
        swift_unknownObjectRelease();

        return (*(v291 + 8))(v296, v157);
      }

LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      return result;
    }

    result = sub_100002C80();
    if (!result)
    {
      goto LABEL_158;
    }

    a4 = result;
    v146 = sub_100006334(&qword_100122C50);
    v60 = swift_allocObject();
    v283 = xmmword_1000E2080;
    *(v60 + 1) = xmmword_1000E2080;
    v59 = *&v25[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
    v35 = v293;
    v284 = v146;
    *&v282 = &v25[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    if (v59)
    {
      v147 = *&v25[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
      v148 = v25;
      v149 = v59;
    }

    else
    {
      sub_10007CB04(0, &qword_100122C58);
      v160 = v25;
      v161 = sub_1000D381C();
      v162 = swift_allocObject();
      *(v162 + 16) = xmmword_1000E0440;
      *(v162 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v162 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
      *(v162 + 32) = v160;
      v163 = v160;
      v164 = sub_1000D382C();

      v25 = v292;
      v147 = sub_1000D360C();
      v149 = v165;
    }

    v60[7] = &type metadata for String;
    v281 = sub_100018744();
    v60[8] = v281;
    v60[4] = v147;
    v60[5] = v149;
    v58 = v35 >> 62;
    if (!(v35 >> 62))
    {
      v166 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_81;
    }

LABEL_149:
    v166 = sub_1000D397C();
LABEL_81:
    v60[12] = &type metadata for Int;
    v60[13] = &protocol witness table for Int;
    v60[9] = v166;

    sub_1000D37AC();
    sub_1000D1B2C();

    v167 = dispatch_group_create();
    if (v58)
    {
      v168 = sub_1000D397C();
    }

    else
    {
      v168 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v168)
    {
LABEL_135:

      sub_10007CB04(0, &qword_100124668);
      v232 = sub_1000D37DC();
      v233 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v234 = swift_allocObject();
      *(v234 + 16) = v233;
      *(v234 + 24) = v35;
      v302 = sub_10009DF9C;
      v303 = v234;
      aBlock = _NSConcreteStackBlock;
      v299 = 1107296256;
      v300 = sub_100079E60;
      v301 = &unk_10011C7D0;
      v235 = _Block_copy(&aBlock);

      v236 = v266;
      sub_1000D2C3C();
      v297 = &_swiftEmptyArrayStorage;
      sub_10009E014(&qword_100124670, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006334(&qword_100124678);
      sub_10003C388();
      v237 = v268;
      v238 = v271;
      sub_1000D38AC();
      sub_1000D37BC();
      _Block_release(v235);
      swift_unknownObjectRelease();

      (*(v270 + 8))(v237, v238);
      (*(v267 + 8))(v236, v269);
      (*(v291 + 8))(v296, v295);
    }

    v169 = 0;
    v273 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation_context;
    v280 = v35 & 0xC000000000000001;
    v276 = (v35 & 0xFFFFFFFFFFFFFF8);
    v261 = &v265[1];
    *&v258 = 0x80000001000DC5D0;
    v260 = xmmword_1000E0440;
    v288 = v167;
    v272 = v168;
    while (1)
    {
      if (v280)
      {
        v43 = sub_1000D38FC();
        v40 = (v169 + 1);
        if (__OFADD__(v169, 1))
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v169 >= *(v276 + 2))
        {
          goto LABEL_137;
        }

        v43 = *(v35 + 8 * v169 + 32);

        v40 = (v169 + 1);
        if (__OFADD__(v169, 1))
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }
      }

      dispatch_group_enter(v167);
      if ([v25 isCancelled])
      {
        v177 = sub_100002C80();
        if (!v177)
        {
          goto LABEL_152;
        }

        v178 = v177;
        v179 = swift_allocObject();
        *(v179 + 16) = v283;
        if (*(v282 + 8))
        {
          v180 = *v282;
          v181 = *(v282 + 8);
        }

        else
        {
          sub_10007CB04(0, &qword_100122C58);
          v185 = sub_1000D381C();
          v186 = swift_allocObject();
          *(v186 + 16) = v260;
          *(v186 + 56) = type metadata accessor for TVWidgetAsyncOperation();
          *(v186 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
          *(v186 + 32) = v292;
          v187 = v292;
          v188 = sub_1000D382C();

          v180 = sub_1000D360C();
          v181 = v189;

          v25 = v292;
        }

        v190 = v281;
        *(v179 + 56) = &type metadata for String;
        *(v179 + 64) = v190;
        *(v179 + 32) = v180;
        *(v179 + 40) = v181;
        *(v179 + 96) = &type metadata for Int;
        *(v179 + 104) = &protocol witness table for Int;
        *(v179 + 72) = v169;

        sub_1000D37AC();
        sub_1000D1B2C();

        a4 = v290;
        sub_1000D19AC();
        v287(a4, 0, 1, v295);
        objc_sync_enter(v25);
        v191 = v289;
        sub_10000F8D0(a4, v289, &qword_100122E90);
        v192 = v294;
        v59 = v263;
        swift_beginAccess();
        sub_10007701C(v191, v192 + v59, &qword_100122E90);
        swift_endAccess();
        objc_sync_exit(v25);
        sub_10000F938(a4, &qword_100122E90);
        v167 = v288;
        dispatch_group_leave(v288);
        v60 = v43;
        v58 = v272;
        v35 = v293;
        goto LABEL_88;
      }

      v182 = v278;
      sub_1000D343C();
      swift_getKeyPath();
      v183 = sub_1000D341C();

      (*v261)(v182, v279);
      if (v183)
      {
        if (*(v183 + 16))
        {
          v184 = *(v183 + 32);
        }

        else
        {
          v184 = 3.0;
        }
      }

      else
      {
        v184 = 3.0;
      }

      v193 = sub_100002C80();
      if (!v193)
      {
        goto LABEL_151;
      }

      v194 = v193;
      v195 = swift_allocObject();
      *(v195 + 16) = v283;
      if (*(v282 + 8))
      {
        v196 = *v282;
        v197 = *(v282 + 8);
      }

      else
      {
        sub_10007CB04(0, &qword_100122C58);
        v198 = sub_1000D381C();
        v199 = swift_allocObject();
        *(v199 + 16) = v260;
        *(v199 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v199 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
        *(v199 + 32) = v292;
        v200 = v292;
        v201 = sub_1000D382C();

        v196 = sub_1000D360C();
        v197 = v202;
      }

      v203 = v281;
      *(v195 + 56) = &type metadata for String;
      *(v195 + 64) = v203;
      *(v195 + 32) = v196;
      *(v195 + 40) = v197;
      *(v195 + 96) = &type metadata for Int;
      *(v195 + 104) = &protocol witness table for Int;
      *(v195 + 72) = v169;

      sub_1000D37AC();
      sub_1000D1B2C();

      sub_1000D340C();
      v205 = v204;
      v206 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v207 = swift_allocObject();
      v207[2] = v206;
      v207[3] = v169;
      v208 = v288;
      v207[4] = v288;
      v209 = *(v43 + 56);
      v285 = v43;
      v286 = v206;
      if (!v209)
      {
        v43 = v207;
        swift_retain_n();
        v211 = v208;
        v59 = &unk_1000E0790;
        goto LABEL_112;
      }

      v59 = &unk_1000E0790;
      if ((*(v43 + 72) & 1) == 0)
      {
        v219 = v184 * v205;
        if (v219 > 0.0)
        {
          v220 = *(v43 + 64);
          if (v220 > 0.0)
          {
            break;
          }
        }
      }

LABEL_110:
      v43 = v207;
      swift_retain_n();
      v210 = v208;
LABEL_112:
      v265 = v40;
      v212 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl;
      a4 = v285;
      swift_beginAccess();
      v213 = v277;
      sub_10000F8D0(a4 + v212, v277, &qword_100122DB8);
      v214 = sub_1000D191C();
      v215 = *(v214 - 8);
      v216 = (*(v215 + 48))(v213, 1, v214);
      sub_10000F938(v213, &qword_100122DB8);
      if (v216 == 1)
      {
        v217 = sub_100002C80();
        if (!v217)
        {
          goto LABEL_154;
        }

        v218 = v217;
        sub_1000D37AC();
        sub_1000D1B2C();

        v60 = v286;
        v167 = v288;
        sub_10009D658(v286, v169, v288);
        v35 = v293;
        v25 = v292;
        v40 = v265;
        a4 = v285;
      }

      else
      {
        v170 = v275;
        sub_10000F8D0(a4 + v212, v275, &qword_100122DB8);
        type metadata accessor for TVWidgetImageLoader();
        v171 = swift_allocObject();
        aBlock = 0xD000000000000013;
        v299 = v258;
        sub_1000D1B5C();
        v172 = OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader_url;
        (*(v215 + 56))(v171 + OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader_url, 1, 1, v214);
        swift_beginAccess();
        sub_10007701C(v170, v171 + v172, &qword_100122DB8);
        swift_endAccess();
        v173 = swift_allocObject();
        swift_weakInit();
        v174 = swift_allocObject();
        v174[2] = v173;
        v174[3] = sub_10009DECC;
        v174[4] = v43;

        sub_10003B3C8(sub_10009DF50, v174);

        swift_setDeallocating();
        v175 = OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader__identifier;
        v176 = sub_100006334(&qword_100124688);
        (*(*(v176 - 8) + 8))(v171 + v175, v176);
        sub_10000F938(v171 + OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader_url, &qword_100122DB8);
        swift_deallocClassInstance();
        v35 = v293;
        v25 = v292;
        v167 = v288;
        v40 = v265;
        v60 = v286;
      }

      v58 = v272;
LABEL_88:

      ++v169;
      if (v40 == v58)
      {
        goto LABEL_135;
      }
    }

    v221 = v219 / v220;
    if (v219 / v220 <= 624.0)
    {
      if (v219 <= 1296.0)
      {
LABEL_123:
        if (v219 > 0.0)
        {
          goto LABEL_124;
        }

        goto LABEL_110;
      }

      v222 = v219 / v221;
    }

    else
    {
      v222 = v219 / v221;
      v221 = 624.0;
      v219 = v222 * 624.0;
    }

    if (v219 > 1296.0)
    {
      v219 = 1296.0;
      v221 = 1296.0 / v222;
LABEL_124:
      v43 = v207;
      swift_retain_n();
      v223 = v208;
      if (v221 > 0.0)
      {

        v224 = sub_1000D35FC();

        if (*(v285 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_cropCode + 8))
        {

          v225 = sub_1000D35FC();
        }

        else
        {
          v225 = 0;
        }

        v226 = [objc_opt_self() artworkURLFromTemplate:v224 forSize:v225 cropCode:0 format:{v219, v221}];

        if (v226)
        {
          v227 = v264;
          sub_1000D18FC();

          v228 = 0;
        }

        else
        {
          v228 = 1;
          v227 = v264;
        }

        v229 = sub_1000D191C();
        (*(*(v229 - 8) + 56))(v227, v228, 1, v229);
        v230 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl;
        v231 = v285;
        swift_beginAccess();
        sub_10007701C(v227, v231 + v230, &qword_100122DB8);
        swift_endAccess();
      }

      goto LABEL_112;
    }

    goto LABEL_123;
  }

LABEL_14:
  v48 = sub_100002C80();
  if (!v48)
  {
LABEL_153:
    __break(1u);
LABEL_154:

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v49 = v48;
  sub_100006334(&qword_100122C50);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1000E2080;
  aBlock = a2;
  sub_100006334(&qword_100126A88);
  v51 = sub_1000D384C();
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v54 = sub_100018744();
  *(v50 + 64) = v54;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  if (*(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8))
  {
    v55 = *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
    v56 = *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
  }

  else
  {
    sub_10007CB04(0, &qword_100122C58);
    v65 = v43;
    v66 = sub_1000D381C();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1000E0440;
    *(v67 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v67 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
    *(v67 + 32) = v65;
    v68 = v65;
    v69 = sub_1000D382C();

    v35 = v295;
    v55 = sub_1000D360C();
    v56 = v70;

    v43 = v294;
  }

  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v54;
  *(v50 + 72) = v55;
  *(v50 + 80) = v56;

  sub_1000D37AC();
  sub_1000D1B2C();

  objc_sync_enter(v43);
  *(v43 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__error) = a2;
  swift_errorRetain();

  objc_sync_exit(v43);
  v71 = v281;
  sub_1000D19EC();
  v72 = type metadata accessor for TVWidgetEntry();
  *(v71 + *(v72 + 20)) = 0;
  *(v71 + *(v72 + 24)) = 2;
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  objc_sync_enter(v43);
  v73 = v280;
  sub_10000F8D0(v71, v280, &qword_1001257C8);
  v74 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
  swift_beginAccess();
  sub_10007701C(v73, v43 + v74, &qword_1001257C8);
  swift_endAccess();
  objc_sync_exit(v43);
  sub_10000F938(v71, &qword_1001257C8);
  v75 = v290;
  sub_1000D19AC();
  v76 = v291;
  v287(v75, 0, 1, v35);
  objc_sync_enter(v43);
  v77 = v289;
  sub_10000F8D0(v75, v289, &qword_100122E90);
  v78 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
  swift_beginAccess();
  sub_10007701C(v77, v43 + v78, &qword_100122E90);
  swift_endAccess();
  objc_sync_exit(v43);
  sub_10000F938(v75, &qword_100122E90);
  sub_1000181E8();

  return (*(v76 + 8))(v296, v35);
}

void sub_10009D658(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
  if (v7)
  {
    v8 = *(Strong + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
  }

  else
  {
    sub_10007CB04(0, &qword_100122C58);
    v9 = sub_1000D381C();
    sub_100006334(&qword_100122C50);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000E0440;
    *(v10 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v10 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
    *(v10 + 32) = v6;
    v6 = v6;
    v11 = sub_1000D382C();

    v8 = sub_1000D360C();
    v7 = v12;
  }

  v13 = sub_100002C80();
  if (v13)
  {
    v14 = v13;
    sub_100006334(&qword_100122C50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000E2080;
    *(v15 + 56) = &type metadata for String;
    v16 = sub_100018744();
    *(v15 + 32) = v8;
    *(v15 + 40) = v7;
    *(v15 + 96) = &type metadata for Int;
    *(v15 + 104) = &protocol witness table for Int;
    *(v15 + 64) = v16;
    *(v15 + 72) = a2;
    sub_1000D37AC();
    sub_1000D1B2C();

LABEL_7:
    dispatch_group_leave(a3);
    return;
  }

  __break(1u);
}

void sub_10009D874(uint64_t a1, uint64_t a2)
{
  v3 = sub_100006334(&qword_1001257C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
    if (v8)
    {
      v9 = *(Strong + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
    }

    else
    {
      sub_10007CB04(0, &qword_100122C58);
      v10 = sub_1000D381C();
      sub_100006334(&qword_100122C50);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000E0440;
      *(v11 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v11 + 64) = sub_10009E014(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
      *(v11 + 32) = v7;
      v7 = v7;
      v12 = sub_1000D382C();

      v9 = sub_1000D360C();
      v8 = v13;
    }

    v14 = sub_100002C80();
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    sub_100006334(&qword_100122C50);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000E0440;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100018744();
    *(v16 + 32) = v9;
    *(v16 + 40) = v8;
    sub_1000D37AC();
    sub_1000D1B2C();
  }

  if (qword_1001220C0 != -1)
  {
    swift_once();
  }

  sub_1000D19EC();
  v17 = type metadata accessor for TVWidgetEntry();
  *&v5[*(v17 + 20)] = a2;
  v5[*(v17 + 24)] = 4;
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);

  sub_100076C3C(v5);
  sub_10000F938(v5, &qword_1001257C8);
  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_1000181E8();
  }
}

void sub_10009DBA8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10009DC64()
{
  sub_1000D346C();
  if (v0 <= 0x3F)
  {
    sub_1000768CC(319, &qword_1001257C0, type metadata accessor for TVWidgetEntry);
    if (v1 <= 0x3F)
    {
      sub_1000768CC(319, &qword_100122F10, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10009DDA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DDE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009DE20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009DE38@<X0>(void *a1@<X8>)
{
  result = sub_1000D1F3C();
  *a1 = v3;
  return result;
}

uint64_t sub_10009DE8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009DED8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DF10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009DF5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009DFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100122E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E014(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10009E064(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_10009E098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009E0E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009E17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100006334(&qword_100126A98);
  v139 = *(v4 - 8);
  __chkstk_darwin(v4);
  v138 = v117 - v5;
  v135 = sub_100006334(&qword_100126AA0);
  __chkstk_darwin(v135);
  v137 = v117 - v6;
  v136 = sub_100006334(&qword_100126AA8);
  __chkstk_darwin(v136);
  v126 = v117 - v7;
  v130 = sub_100006334(&qword_100126AB0);
  __chkstk_darwin(v130);
  v131 = (v117 - v8);
  v127 = sub_1000D1E1C();
  __chkstk_darwin(v127);
  v10 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_100126AB8);
  __chkstk_darwin(v11 - 8);
  v13 = v117 - v12;
  v14 = sub_1000D28EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100006334(&qword_100126AC0);
  v123 = *(v128 - 8);
  v18 = __chkstk_darwin(v128);
  v124 = v19;
  v125 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v117 - v20;
  v134 = sub_100006334(&qword_100126AC8);
  v22 = __chkstk_darwin(v134);
  v129 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = v117 - v24;
  v25 = sub_100006334(&qword_100126AD0);
  v26 = __chkstk_darwin(v25 - 8);
  v27 = __chkstk_darwin(v26);
  v132 = v117 - v28;
  __chkstk_darwin(v27);
  v140 = v117 - v30;
  v31 = *a1;
  if (*a1)
  {
    v120 = v29;
    v121 = v4;
    v122 = a2;
    v119 = v31;
    sub_1000D28CC();
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    sub_1000D291C();

    (*(v15 + 8))(v17, v14);
    sub_1000D31EC();
    v32 = sub_1000D31FC();
    (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
    sub_1000D290C();

    sub_10000F938(v13, &qword_100126AB8);
    v33 = *(a1 + 160);
    v164 = *(a1 + 144);
    v165 = v33;
    v166 = *(a1 + 176);
    v34 = *(a1 + 96);
    v160 = *(a1 + 80);
    v161 = v34;
    v35 = *(a1 + 112);
    v163 = *(a1 + 128);
    v162 = v35;
    v36 = *(a1 + 32);
    v156 = *(a1 + 16);
    v157 = v36;
    v38 = *(a1 + 48);
    v37 = *(a1 + 64);
    v118 = a1;
    v159 = v37;
    v158 = v38;
    v39 = v156;
    v40 = BYTE8(v37);
    v117[1] = BYTE8(v37);
    v41 = &v21[*(sub_100006334(&qword_100126AD8) + 36)];
    *v41 = v39;
    v41[8] = 0;
    v41[9] = v40;
    v42 = v159;
    v43 = &v21[*(sub_100006334(&qword_100126AE0) + 36)];
    v44 = v127;
    v45 = *(v127 + 20);
    v46 = enum case for RoundedCornerStyle.continuous(_:);
    v47 = sub_1000D217C();
    v48 = *(*(v47 - 8) + 104);
    v48(&v43[v45], v46, v47);
    *v43 = v42;
    *(v43 + 1) = v42;
    *&v43[*(sub_100006334(&qword_100124378) + 36)] = 256;
    sub_10003AA80(&v156, v155);
    LOBYTE(v43) = sub_1000D235C();
    v21[*(sub_100006334(&qword_100126AE8) + 36)] = v43;
    v49 = v158;
    v50 = *(&v157 + 1);
    v51 = *(&v158 + 1);
    v52 = &v21[*(sub_100006334(&qword_100126AF0) + 36)];
    *v52 = v49;
    *(v52 + 1) = v50;
    *(v52 + 2) = 0;
    *(v52 + 3) = v51;
    v48(&v10[*(v44 + 20)], v46, v47);
    *v10 = v42;
    *(v10 + 1) = v42;
    v53 = *(&v156 + 1);

    sub_1000D1BEC();
    v54 = &v21[*(v128 + 36)];
    sub_10009F20C(v10, v54);
    v55 = v54 + *(sub_100006334(&qword_100126AF8) + 36);
    v56 = v168;
    *v55 = v167;
    *(v55 + 16) = v56;
    *(v55 + 32) = v169;
    v57 = sub_100006334(&qword_100126B00);
    *(v54 + *(v57 + 52)) = v53;
    *(v54 + *(v57 + 56)) = 256;

    v58 = sub_1000D2B5C();
    v60 = v59;
    sub_10009F270(v10);
    v61 = (v54 + *(sub_100006334(&qword_100126B08) + 36));
    *v61 = v58;
    v61[1] = v60;
    v62 = sub_1000D2B5C();
    v64 = v63;
    v65 = (v54 + *(sub_100006334(&qword_100126B10) + 36));
    *v65 = v62;
    v65[1] = v64;
    if (sub_1000D1BCC())
    {
      v66 = v125;
      sub_10000F8D0(v21, v125, &qword_100126AC0);
      v67 = (*(v123 + 80) + 16) & ~*(v123 + 80);
      v68 = swift_allocObject();
      sub_10000F998(v66, v68 + v67, &qword_100126AC0);
      v69 = v131;
      *v131 = sub_10009F998;
      v69[1] = v68;
    }

    else
    {
      sub_10000F8D0(v21, v131, &qword_100126AC0);
    }

    v72 = v133;
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_100126B18);
    sub_10000FC38(&qword_100126B20, &qword_100126B18);
    sub_10009F2CC();
    v73 = v129;
    sub_1000D229C();
    sub_10000F938(v21, &qword_100126AC0);
    sub_10000F998(v73, v72, &qword_100126AC8);
    v74 = v160;
    v75 = v118;
    if (v160)
    {
      v76 = *(&v162 + 1);
      v77 = v162;
      v78 = *(&v161 + 1);
      v79 = v161;
      v80 = BYTE8(v160);

      v81 = sub_1000D2B5C();
      v83 = v82;
      *v154 = v81;
      *&v154[8] = v82;
      *&v154[16] = v74;
      v154[24] = v80;
      *&v154[32] = v79;
      *&v154[40] = v78;
      *&v154[48] = v77;
      *&v154[56] = v76;
      v84 = v72;
      v85 = v72;
      v86 = v126;
      sub_10000F8D0(v84, v126, &qword_100126AC8);
      v87 = (v86 + *(v136 + 36));
      v88 = *&v154[16];
      *v87 = *v154;
      v87[1] = v88;
      v89 = *&v154[48];
      v87[2] = *&v154[32];
      v87[3] = v89;
      v155[0] = v81;
      v155[1] = v83;
      v155[2] = v74;
      LOBYTE(v155[3]) = v80;
      v155[4] = v79;
      v155[5] = v78;
      v155[6] = v77;
      v155[7] = v76;
      sub_10000F8D0(v154, v153, &qword_1001243D8);
      sub_10000F938(v155, &qword_1001243D8);
      sub_10000F8D0(v86, v137, &qword_100126AA8);
      swift_storeEnumTagMultiPayload();
      sub_10009F5F8();
      sub_10009F6B0();
      v90 = v132;
      sub_1000D229C();
      sub_10000F938(v86, &qword_100126AA8);
      v91 = v85;
    }

    else
    {
      sub_10000F8D0(v72, v137, &qword_100126AC8);
      swift_storeEnumTagMultiPayload();
      sub_10009F5F8();
      sub_10009F6B0();
      v90 = v132;
      sub_1000D229C();
      v91 = v72;
    }

    sub_10000F938(v91, &qword_100126AC8);
    sub_10000F998(v90, v140, &qword_100126AD0);
    v92 = *(v75 + 8);
    if (v92 == 2 || (v92 & 1) == 0)
    {
      sub_10003AADC(&v156);
      sub_10009F768(v155);
    }

    else
    {
      *v154 = xmmword_1000EABD0;
      type metadata accessor for CGSize(0);
      sub_1000D29AC();
      v93 = v155[0];
      v94 = v155[1];
      v95 = v155[2];
      v96 = sub_1000D238C();
      v97 = sub_1000D239C();
      sub_1000D239C();
      if (sub_1000D239C() != v96)
      {
        v97 = sub_1000D239C();
      }

      v149 = v164;
      v150 = v165;
      v151 = v166;
      v145 = v160;
      v146 = v161;
      v147 = v162;
      v148 = v163;
      v141 = v156;
      v142 = v157;
      v143 = v158;
      v144 = v159;
      sub_1000D1B9C();
      v99 = v98;
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v152[0] = 0;
      v106 = sub_1000D236C();
      v107 = sub_1000D239C();
      sub_1000D239C();
      if (sub_1000D239C() != v106)
      {
        v107 = sub_1000D239C();
      }

      sub_1000D1B9C();
      v153[0] = 0;
      *&v154[128] = v149;
      *&v154[144] = v150;
      *&v154[160] = v151;
      *&v154[80] = v146;
      *&v154[112] = v148;
      *&v154[96] = v147;
      *v154 = v141;
      *&v154[16] = v142;
      *&v154[48] = v144;
      *&v154[64] = v145;
      *&v154[32] = v143;
      *&v154[176] = v93;
      *&v154[184] = v94;
      *&v154[192] = v95;
      v154[200] = v97;
      *&v154[208] = v99;
      *&v154[216] = v101;
      *&v154[224] = v103;
      *&v154[232] = v105;
      v154[240] = 0;
      v154[248] = v107;
      *&v154[256] = v108;
      *&v154[264] = v109;
      *&v154[272] = v110;
      *&v154[280] = v111;
      v154[288] = 0;
      nullsub_1(v154);
      memcpy(v155, v154, 0x121uLL);
    }

    v112 = v140;
    v113 = v120;
    sub_10000F8D0(v140, v120, &qword_100126AD0);
    memcpy(v152, v155, sizeof(v152));
    v114 = v138;
    sub_10000F8D0(v113, v138, &qword_100126AD0);
    v115 = *(sub_100006334(&qword_100126B68) + 48);
    memcpy(v153, v152, 0x121uLL);
    sub_10000F8D0(v153, v154, &qword_100126B70);

    sub_10000F938(v112, &qword_100126AD0);
    memcpy((v114 + v115), v153, 0x121uLL);
    memcpy(v154, v152, sizeof(v154));
    sub_10000F938(v154, &qword_100126B70);
    sub_10000F938(v113, &qword_100126AD0);
    v116 = v122;
    sub_10000F998(v114, v122, &qword_100126A98);
    return (*(v139 + 56))(v116, 0, 1, v121);
  }

  else
  {
    v70 = *(v139 + 56);

    return v70(a2, 1, 1, v4);
  }
}

uint64_t sub_10009F0C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1000D1CDC();
  sub_1000D2B3C();
  sub_1000D1C8C();
  sub_10000F8D0(a1, a2, &qword_100126AC0);
  v4 = (a2 + *(sub_100006334(&qword_100126B80) + 36));
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  result = sub_100006334(&qword_100126B88);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10009F188@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v12[8] = v1[8];
  v12[9] = v3;
  v4 = v1[11];
  v12[10] = v1[10];
  v12[11] = v4;
  v5 = v1[5];
  v12[4] = v1[4];
  v12[5] = v5;
  v6 = v1[7];
  v12[6] = v1[6];
  v12[7] = v6;
  v7 = v1[1];
  v12[0] = *v1;
  v12[1] = v7;
  v8 = v1[3];
  v12[2] = v1[2];
  v12[3] = v8;
  *a1 = sub_1000D2B0C();
  a1[1] = v9;
  v10 = sub_100006334(&qword_100126A90);
  return sub_10009E17C(v12, a1 + *(v10 + 44));
}

uint64_t sub_10009F20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D1E1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009F270(uint64_t a1)
{
  v2 = sub_1000D1E1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009F2CC()
{
  result = qword_100126B28;
  if (!qword_100126B28)
  {
    sub_10000637C(&qword_100126AC0);
    sub_10009F384();
    sub_10000FC38(&qword_100126B50, &qword_100126B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B28);
  }

  return result;
}

unint64_t sub_10009F384()
{
  result = qword_100126B30;
  if (!qword_100126B30)
  {
    sub_10000637C(&qword_100126AF0);
    sub_10009F410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B30);
  }

  return result;
}

unint64_t sub_10009F410()
{
  result = qword_100126B38;
  if (!qword_100126B38)
  {
    sub_10000637C(&qword_100126AE8);
    sub_10009F49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B38);
  }

  return result;
}

unint64_t sub_10009F49C()
{
  result = qword_100126B40;
  if (!qword_100126B40)
  {
    sub_10000637C(&qword_100126AE0);
    sub_10009F554();
    sub_10000FC38(&qword_100124398, &qword_100124378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B40);
  }

  return result;
}

unint64_t sub_10009F554()
{
  result = qword_100126B48;
  if (!qword_100126B48)
  {
    sub_10000637C(&qword_100126AD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B48);
  }

  return result;
}

unint64_t sub_10009F5F8()
{
  result = qword_100126B58;
  if (!qword_100126B58)
  {
    sub_10000637C(&qword_100126AA8);
    sub_10009F6B0();
    sub_10000FC38(&qword_1001243D0, &qword_1001243D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B58);
  }

  return result;
}

unint64_t sub_10009F6B0()
{
  result = qword_100126B60;
  if (!qword_100126B60)
  {
    sub_10000637C(&qword_100126AC8);
    sub_10000FC38(&qword_100126B20, &qword_100126B18);
    sub_10009F2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B60);
  }

  return result;
}

double sub_10009F768(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10009F798()
{
  v1 = (sub_100006334(&qword_100126AC0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*v1 + 64);
  v4 = sub_100006334(&qword_100126B78);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(sub_100006334(&qword_100126AE0) + 36);
  v6 = sub_1000D1E1C();
  v7 = v5 + *(v6 + 20);
  v8 = sub_1000D217C();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  sub_100006334(&qword_100126AF0);

  v9(v0 + v3 + v1[11] + *(v6 + 20), v8);
  sub_100006334(&qword_100126AF8);

  sub_100006334(&qword_100126B00);

  return _swift_deallocObject(v0, v3 + v11, v2 | 7);
}

uint64_t sub_10009F998@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_100006334(&qword_100126AC0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009F0C0(v4, a1);
}

__n128 sub_10009FA24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10009FA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009FAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009FB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v2 = sub_100006334(&qword_100126BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v43 = sub_100006334(&qword_100126BE8) - 8;
  __chkstk_darwin(v43);
  v6 = &v42 - v5;
  sub_1000D215C();
  v7 = sub_1000D25EC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = &v6[*(sub_100006334(&qword_100126BF0) + 36)];
  v16 = *(sub_100006334(&qword_100126BF8) + 28);
  v17 = enum case for ContentSizeCategory.large(_:);
  v18 = sub_1000D21AC();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  *v6 = v7;
  *(v6 + 1) = v9;
  v6[16] = v11 & 1;
  *(v6 + 3) = v13;
  *&v6[*(sub_100006334(&qword_100126C00) + 36)] = 256;
  sub_1000D244C();
  v19 = enum case for Font.Design.rounded(_:);
  v20 = sub_1000D242C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v4, v19, v20);
  (*(v21 + 56))(v4, 0, 1, v20);
  v22 = sub_1000D245C();
  sub_10000F938(v4, &qword_100126BE0);
  v23 = swift_getKeyPath();
  v24 = &v6[*(sub_100006334(&qword_100126C08) + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = sub_1000D284C();
  v26 = swift_getKeyPath();
  v27 = &v6[*(sub_100006334(&qword_100126C10) + 36)];
  *v27 = v26;
  v27[1] = v25;
  sub_1000D2B5C();
  sub_1000D1C8C();
  v28 = &v6[*(v43 + 44)];
  v29 = v46;
  *v28 = v45;
  *(v28 + 1) = v29;
  *(v28 + 2) = v47;
  LOBYTE(v26) = sub_1000D235C();
  v30 = sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != v26)
  {
    v30 = sub_1000D239C();
  }

  sub_1000D1B9C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v44;
  sub_1000A10F8(v6, v44);
  result = sub_100006334(&qword_100126C18);
  v41 = v39 + *(result + 36);
  *v41 = v30;
  *(v41 + 8) = v32;
  *(v41 + 16) = v34;
  *(v41 + 24) = v36;
  *(v41 + 32) = v38;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_10009FF98(uint64_t a1)
{
  v2 = sub_1000D21AC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000D1F6C();
}

uint64_t sub_1000A0060@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100006334(&qword_100126AB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_1000D28EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006334(&qword_100126C20);
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_100086A14();
  v13 = *(v1 + 120);
  v14 = sub_10008A688(*(v1 + 112), v13 + v13, v13);
  if (v14)
  {
    v15 = v14;
    sub_1000D28CC();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    sub_1000D291C();

    (*(v7 + 8))(v9, v6);
    sub_1000D31EC();
    v16 = sub_1000D31FC();
    (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
    sub_1000D290C();

    sub_10000F938(v5, &qword_100126AB8);
    *&v12[*(sub_100006334(qword_100126C28) + 36)] = 256;
    v17 = v13 * 0.5;
    v18 = &v12[*(v10 + 36)];
    v19 = *(sub_1000D1E1C() + 20);
    v20 = enum case for RoundedCornerStyle.continuous(_:);
    v21 = sub_1000D217C();
    (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
    *v18 = v17;
    v18[1] = v17;
    *(v18 + *(sub_100006334(&qword_100124378) + 36)) = 256;
    sub_10000F998(v12, a1, &qword_100126C20);
    return (*(v25 + 56))(a1, 0, 1, v10);
  }

  else
  {
    v23 = *(v25 + 56);

    return v23(a1, 1, 1, v10);
  }
}

uint64_t sub_1000A0450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = sub_1000D210C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = (a1 + *(sub_100006334(&qword_100126BA0) + 44));
  *v4 = sub_1000D2B5C();
  v4[1] = v5;
  v6 = sub_100006334(&qword_100126BA8);
  sub_1000A0628(v2, v4 + *(v6 + 44));
  v15 = *(v2 + 176);
  *&v16 = *(v2 + 192);
  sub_100006334(&qword_100126BB0);
  sub_1000D29BC();
  v7 = *(v2 + 120);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v8 = (a1 + *(sub_100006334(&qword_100126BB8) + 36));
  *v8 = v15;
  v8[1] = v16;
  v8[2] = v17;
  *(a1 + *(sub_100006334(&qword_100126BC0) + 36)) = 256;
  v9 = v7 * 0.5;
  v10 = (a1 + *(sub_100006334(&qword_100126BC8) + 36));
  v11 = *(sub_1000D1E1C() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = sub_1000D217C();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = v9;
  v10[1] = v9;
  result = sub_100006334(&qword_100124378);
  *(v10 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1000A0628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100006334(&qword_100126BD0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24[-1] - v8;
  sub_1000A0060(&v24[-1] - v8);
  v25 = *(a1 + 176);
  v26 = *(a1 + 192);
  sub_100006334(&qword_100126BB0);
  sub_1000D29CC();
  v10 = v24[0];
  v11 = v24[1];
  v12 = v24[2];
  v13 = v24[3];
  v14 = swift_allocObject();
  v15 = *(a1 + 176);
  *(v14 + 176) = *(a1 + 160);
  *(v14 + 192) = v15;
  *(v14 + 208) = *(a1 + 192);
  v16 = *(a1 + 112);
  *(v14 + 112) = *(a1 + 96);
  *(v14 + 128) = v16;
  v17 = *(a1 + 144);
  *(v14 + 144) = *(a1 + 128);
  *(v14 + 160) = v17;
  v18 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v18;
  v19 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v19;
  v20 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v20;
  sub_10000F8D0(v9, v7, &qword_100126BD0);
  sub_10000F8D0(v7, a2, &qword_100126BD0);
  v21 = (a2 + *(sub_100006334(&qword_100126BD8) + 48));
  *v21 = v10;
  v21[1] = v11;
  v21[2] = v12;
  v21[3] = v13;
  v21[4] = sub_1000A0918;
  v21[5] = v14;
  sub_1000A0920(a1, v24);

  sub_10000F938(v9, &qword_100126BD0);

  return sub_10000F938(v7, &qword_100126BD0);
}

uint64_t sub_1000A08C0()
{

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000A0980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = *(a1 + 16);
  sub_10000637C(&qword_100126CD8);
  sub_1000D1DCC();
  v34 = *(a1 + 24);
  v5 = v34;
  v35 = sub_10000FC38(&qword_100126CE0, &qword_100126CD8);
  v26 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v6 = sub_1000D2A7C();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  sub_10000637C(&qword_100126CE8);
  v9 = sub_1000D1DCC();
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v23 = &v22 - v13;
  v28 = v4;
  v29 = v5;
  v30 = v2;
  sub_1000D2B5C();
  sub_1000D2A6C();
  v36 = *v2;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v5;
  v15 = *(v2 + 1);
  *(v14 + 32) = *v2;
  *(v14 + 48) = v15;
  *(v14 + 64) = *(v2 + 2);
  sub_1000A14CC(&v36, v33);

  WitnessTable = swift_getWitnessTable();
  sub_1000A1528();
  sub_1000A157C();
  sub_1000D274C();

  (*(v25 + 8))(v8, v6);
  v17 = sub_10000FC38(&qword_100126D00, &qword_100126CE8);
  v31 = WitnessTable;
  v32 = v17;
  v18 = swift_getWitnessTable();
  v19 = v23;
  sub_1000B6200(v12, v9, v18);
  v20 = *(v24 + 8);
  v20(v12, v9);
  sub_1000B6200(v19, v9, v18);
  return (v20)(v19, v9);
}

uint64_t sub_1000A0D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v20 = *(a2 - 8);
  v21 = a3;
  __chkstk_darwin(a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_100126CD8);
  v8 = sub_1000D1DCC();
  v22 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v20 - v13;
  (*(a1 + 32))(v12);
  v26 = sub_1000A1028;
  v27 = 0;
  sub_1000D2B5C();
  sub_100006334(&qword_100126D10);
  sub_10000FC38(&qword_100126D18, &qword_100126D10);
  v15 = v21;
  sub_1000D26AC();
  (*(v20 + 8))(v7, a2);
  v16 = sub_10000FC38(&qword_100126CE0, &qword_100126CD8);
  v24 = v15;
  v25 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_1000B6200(v11, v8, WitnessTable);
  v18 = *(v22 + 8);
  v18(v11, v8);
  sub_1000B6200(v14, v8, WitnessTable);
  return (v18)(v14, v8);
}

uint64_t sub_1000A1028@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000D283C();
  result = sub_1000D1CDC();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1000A10F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100126BE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1168()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1000A11CC()
{
  result = qword_100126CB0;
  if (!qword_100126CB0)
  {
    sub_10000637C(&qword_100126BC8);
    sub_1000A1284();
    sub_10000FC38(&qword_100124398, &qword_100124378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126CB0);
  }

  return result;
}

unint64_t sub_1000A1284()
{
  result = qword_100126CB8;
  if (!qword_100126CB8)
  {
    sub_10000637C(&qword_100126BC0);
    sub_1000A1310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126CB8);
  }

  return result;
}

unint64_t sub_1000A1310()
{
  result = qword_100126CC0;
  if (!qword_100126CC0)
  {
    sub_10000637C(&qword_100126BB8);
    sub_10000FC38(&qword_100126CC8, &qword_100126CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126CC0);
  }

  return result;
}

uint64_t sub_1000A1418()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A1460()
{
  type metadata accessor for ChildSizeReader();
  sub_100006334(&qword_100126D08);
  return sub_1000D2A8C();
}

unint64_t sub_1000A1528()
{
  result = qword_100126CF0;
  if (!qword_100126CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126CF0);
  }

  return result;
}

unint64_t sub_1000A157C()
{
  result = qword_100126CF8;
  if (!qword_100126CF8)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126CF8);
  }

  return result;
}

uint64_t sub_1000A15E4()
{
  sub_10000637C(&qword_100126CD8);
  sub_1000D1DCC();
  sub_10000FC38(&qword_100126CE0, &qword_100126CD8);
  swift_getWitnessTable();
  sub_1000D2A7C();
  sub_10000637C(&qword_100126CE8);
  sub_1000D1DCC();
  swift_getWitnessTable();
  sub_10000FC38(&qword_100126D00, &qword_100126CE8);
  return swift_getWitnessTable();
}

unint64_t sub_1000A173C(unint64_t a1)
{
  v2 = 0xD00000000000003ALL;
  if (((a1 - 15) & 0xFE) != 0)
  {
    v3 = 35;
  }

  else
  {
    v3 = 47;
  }

  if (a1 - 3 < 2 || a1 == 18)
  {
    v5 = 0;
    sub_1000D38DC(74);
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x80000001000DC7B0;
    sub_1000D366C(v6);
    v7._countAndFlagsBits = 0xD000000000000033;
    v7._object = 0x80000001000DC810;
    sub_1000D366C(v7);
LABEL_10:
    v8._countAndFlagsBits = v3;
    v8._object = 0xE100000000000000;
    sub_1000D366C(v8);

    v9._countAndFlagsBits = 0xD000000000000011;
    v9._object = 0x80000001000DC7F0;
    sub_1000D366C(v9);
    v10._countAndFlagsBits = sub_1000A1C6C(a1);
    sub_1000D366C(v10);

    return v5;
  }

  if (a1)
  {
    sub_1000D38DC(23);

    v5 = 0xD00000000000003ALL;
    goto LABEL_10;
  }

  return v2;
}

id sub_1000A1894(unsigned __int8 a1)
{
  v2 = WLKSystemSettingsDebugOverride();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 BOOLValue];

    if (v4)
    {
      sub_1000D1A0C();
LABEL_4:
      v5 = 1;
      return (v5 & 1);
    }
  }

  v6 = a1;
  v5 = 1;
  if (v6 <= 8)
  {
    if (v6 < 7)
    {
      return (v5 & 1);
    }

    return sub_100055DF8();
  }

  else
  {
    if (v6 <= 13)
    {
      if (v6 > 11)
      {
        sub_1000D1A7C();
        v10 = sub_1000D1A6C();
        if (v10)
        {

          return (v5 & 1);
        }
      }

      else if (v6 == 9)
      {
        if (sub_100055DF8())
        {
          v7 = [objc_opt_self() sharedPreferences];
          v8 = [v7 useCellularDataPlayback];
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 != 10)
        {
          return (v5 & 1);
        }

        if (sub_100055DF8())
        {
          v7 = [objc_opt_self() sharedPreferences];
          v8 = [v7 useCellularDataDownload];
          goto LABEL_27;
        }
      }

LABEL_34:
      v5 = 0;
      return (v5 & 1);
    }

    if (v6 <= 15)
    {
      if (v6 == 14)
      {
        sub_1000D1A7C();
        v11 = sub_1000D1A6C();
        if (v11)
        {

          v5 = sub_1000D2CAC() ^ 1;
          return (v5 & 1);
        }

        goto LABEL_34;
      }

      result = [objc_opt_self() defaultStore];
      if (result)
      {
        v14 = result;
        v15 = [result groupID];

        if (!v15)
        {
          goto LABEL_4;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v6 != 16)
      {
        if (v6 != 17)
        {
          return (v5 & 1);
        }

        v7 = [objc_opt_self() sharedPreferences];
        v8 = [v7 hasAVAdapterEvenBeenConnected];
LABEL_27:
        v5 = v8;

        return (v5 & 1);
      }

      result = [objc_opt_self() defaultStore];
      if (result)
      {
        v12 = result;
        v13 = [result groupID];

        if (v13)
        {

          goto LABEL_4;
        }

        goto LABEL_34;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A1B28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000A1894(a1);
  if (result)
  {
    goto LABEL_2;
  }

  if (a1 > 0xBu)
  {
    if (a1 - 12 < 2)
    {
      goto LABEL_17;
    }

    if (a1 != 14)
    {
      if (a1 == 17)
      {
        *a2 = 2;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 2;
        return result;
      }

      goto LABEL_2;
    }

    result = sub_1000D2CAC();
    if (result)
    {
      v8 = 5;
    }

    else
    {
LABEL_17:
      v8 = 1;
    }

    *a2 = v8;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
LABEL_19:
    v5 = 2;
    goto LABEL_20;
  }

  if (a1 - 7 < 2)
  {
    goto LABEL_14;
  }

  if (a1 - 9 >= 2)
  {
LABEL_2:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v5 = -1;
LABEL_20:
    *(a2 + 32) = v5;
    return result;
  }

  result = sub_100055DF8();
  if ((result & 1) == 0)
  {
LABEL_14:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_19;
  }

  if (sub_1000A1C6C(a1) == 0xD000000000000017 && 0x80000001000D6960 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000D39CC();
  }

  *a2 = v7 & 1;
  *(a2 + 32) = 0;
  return result;
}

unint64_t sub_1000A1C6C(unint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000024;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 16:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x6165707041707041;
      break;
    case 12:
      result = 0x70537374726F7053;
      break;
    case 13:
      result = 0x4879616C50657355;
      break;
    case 14:
      result = 0x69447478654E7055;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A1EF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000A1C6C(*a1);
  v5 = v4;
  if (v3 == sub_1000A1C6C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000D39CC();
  }

  return v8 & 1;
}

unint64_t sub_1000A1F7C()
{
  result = qword_100126D20;
  if (!qword_100126D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126D20);
  }

  return result;
}

Swift::Int sub_1000A1FD0()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000A1C6C(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_1000A2034()
{
  sub_1000A1C6C(*v0);
  sub_1000D364C();
}

Swift::Int sub_1000A2088()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000A1C6C(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_1000A20E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A2370();
  *a1 = result;
  return result;
}

unint64_t sub_1000A2118@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000A1C6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000A2148()
{
  result = qword_100126D28;
  if (!qword_100126D28)
  {
    sub_10000637C(&qword_100126D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126D28);
  }

  return result;
}

uint64_t sub_1000A21D8@<X0>(_BYTE *a1@<X8>)
{

  result = sub_1000A2370();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TVSettingsDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A2370()
{
  v0 = sub_1000D39EC();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000A23DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SportsWidgetContentViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A2524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006334(&qword_1001222B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SportsWidgetContentViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for SportsWidgetView()
{
  result = qword_100126D90;
  if (!qword_100126D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A26A4()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsWidgetContentViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A274C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1000D22FC();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1DBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsWidgetContentView();
  __chkstk_darwin(v8);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100006334(&qword_100126DD0);
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = sub_100006334(&qword_100126DD8);
  v16 = *(v15 - 8);
  v59 = v15;
  v60 = v16;
  __chkstk_darwin(v15);
  v52 = &v50 - v17;
  v18 = sub_100006334(&qword_100126DE0);
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  __chkstk_darwin(v18);
  v54 = &v50 - v20;
  v21 = sub_100006334(&qword_100126DE8);
  v22 = *(v21 - 8);
  v63 = v21;
  v64 = v22;
  __chkstk_darwin(v21);
  v55 = &v50 - v23;
  v24 = sub_100006334(&qword_100126DF0);
  v65 = *(v24 - 8);
  v66 = v24;
  __chkstk_darwin(v24);
  v56 = &v50 - v25;
  v53 = type metadata accessor for SportsWidgetView();
  v26 = *(v53 + 24);
  v51 = v1;
  sub_1000A2F0C(v1 + v26, v10 + v8[7]);
  *v10 = swift_getKeyPath();
  sub_100006334(&qword_100122410);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v28 = v10 + v8[5];
  *v28 = KeyPath;
  v28[8] = 0;
  sub_10004B948(v10 + v8[6]);
  type metadata accessor for SportsWidgetContentViewModel(0);
  sub_1000B2124(v7);
  sub_1000D1D9C();
  (*(v5 + 8))(v7, v4);
  sub_1000D2B5C();
  v49 = sub_1000A2FA8();
  sub_1000D261C();
  sub_1000A3000(v10);
  v71 = v8;
  v72 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v52;
  v31 = v57;
  sub_1000D267C();
  (*(v58 + 8))(v14, v31);
  v32 = v67;
  sub_1000D22EC();
  v71 = v31;
  v72 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v54;
  v35 = v59;
  sub_1000D276C();
  (*(v68 + 8))(v32, v69);
  (*(v60 + 8))(v30, v35);
  v71 = v35;
  v72 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v55;
  v38 = v61;
  sub_1000D262C();
  (*(v62 + 8))(v34, v38);
  v71 = v38;
  v72 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v56;
  v40 = v63;
  sub_1000D266C();
  (*(v64 + 8))(v37, v40);
  v41 = swift_getKeyPath();
  v42 = sub_100006334(&qword_100126E00);
  v43 = v70;
  v44 = (v70 + *(v42 + 36));
  v45 = *(sub_100006334(&qword_100125958) + 28);
  v46 = enum case for ColorScheme.dark(_:);
  v47 = sub_1000D1BBC();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = v41;
  return (*(v65 + 32))(v43, v39, v66);
}

uint64_t sub_1000A2F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsWidgetContentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D209C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000A2FA8()
{
  result = qword_100126DF8;
  if (!qword_100126DF8)
  {
    type metadata accessor for SportsWidgetContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126DF8);
  }

  return result;
}

uint64_t sub_1000A3000(uint64_t a1)
{
  v2 = type metadata accessor for SportsWidgetContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A3068()
{
  result = qword_100126E08;
  if (!qword_100126E08)
  {
    sub_10000637C(&qword_100126E00);
    sub_10000637C(&qword_100126DE8);
    sub_10000637C(&qword_100126DE0);
    sub_10000637C(&qword_100126DD8);
    sub_10000637C(&qword_100126DD0);
    type metadata accessor for SportsWidgetContentView();
    sub_1000A2FA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000A3224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E08);
  }

  return result;
}

unint64_t sub_1000A3224()
{
  result = qword_100125950;
  if (!qword_100125950)
  {
    sub_10000637C(&qword_100125958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125950);
  }

  return result;
}

unint64_t sub_1000A328C()
{
  result = qword_100126E30;
  if (!qword_100126E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E30);
  }

  return result;
}

uint64_t sub_1000A3324()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_1000123E8();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsSelectedAudioLanguageEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  result = sub_1000B7E94(v8);
  if (!v0)
  {
    if (!v10 || (result = sub_10006E008(), result == 142))
    {
      sub_1000B7A70(0xD00000000000001BLL, 0x80000001000DC8B0);
      sub_100072758();
      swift_allocError();
      *v11 = 4;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1000A35C8()
{
  v1 = v0;
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v2 = sub_10008C47C();
  v3 = (*(v2 + 48))(&type metadata for TVSettingsAppAppearanceEntity, v2);
  v5 = v4;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();

  v10 = sub_1000B7E94(v9);
  if (!v0)
  {
    if (!v11 || (v12 = v10, v13._rawValue = &off_100118AE0, v14 = v11, v17._countAndFlagsBits = v12, v17._object = v14, v1 = sub_1000D39AC(v13, v17), , v1 > 2))
    {
      sub_1000B7950(0xD00000000000001BLL, 0x80000001000DC8B0);
      sub_100072758();
      v1 = swift_allocError();
      *v15 = 4;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 2;
      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_1000A37F8(uint64_t (*a1)(void), uint64_t a2, void *a3, void (*a4)(unint64_t, unint64_t))
{
  if (qword_100122140 != -1)
  {
    v23 = a1;
    swift_once();
    a1 = v23;
  }

  v8 = a1();
  v9 = (*(v8 + 48))(a2, v8);
  v11 = v10;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v13 = sub_1000232F8(v9, v11), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + v13);
  }

  else
  {
    v15 = 0;
  }

  swift_endAccess();

  result = sub_1000B7E94(v15);
  if (!v4)
  {
    if (v17)
    {
      v18 = result;
      v19._rawValue = a3;
      v20 = v17;
      v24._countAndFlagsBits = v18;
      v24._object = v20;
      v21 = sub_1000D39AC(v19, v24);

      if (!v21)
      {
        return 0;
      }

      if (v21 == 1)
      {
        return 1;
      }
    }

    a4(0xD00000000000001BLL, 0x80000001000DC8B0);
    sub_100072758();
    swift_allocError();
    *v22 = 4;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000A3A00(char a1)
{
  v2 = sub_1000123E8();
  v3 = *(v2 + 48);
  v4 = (v3)(&type metadata for TVSettingsSelectedAudioLanguageEntity, v2);
  v6 = sub_1000540F4(v4, v5);

  if (v6 == 19)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_1000A1B28(v7, v19);
  if (v20 == 255)
  {
    sub_1000726F0(v19);
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(25);
    v23._object = 0x80000001000DC890;
    v23._countAndFlagsBits = 0xD000000000000017;
    sub_1000D366C(v23);
    LOBYTE(v19[0]) = a1;
    sub_1000D395C();
    sub_1000B7A70(*&v21[0], *(&v21[0] + 1));

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v10 = v3();
    v12 = v11;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v14 = sub_1000232F8(v10, v12), (v15 & 1) != 0))
    {
      v16 = *(v13[7] + v14);
    }

    else
    {
      v16 = 0;
    }

    swift_endAccess();

    v17 = sub_10005F6D4(a1);
    sub_1000B7BF4(v16, v17, v18);
  }

  else
  {
    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v21, v8);
    swift_willThrow();
    return sub_100072808(v21);
  }
}

uint64_t sub_1000A3D30(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  v27 = a5;
  v7 = a2();
  v8 = *(v7 + 48);
  v9 = v8(a3, v7);
  v11 = sub_1000540F4(v9, v10);

  if (v11 == 19)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_1000A1B28(v12, v23);
  if (v24 == 255)
  {
    sub_1000726F0(v23);
    *&v25[0] = 0;
    *(&v25[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(25);
    v28._object = 0x80000001000DC890;
    v28._countAndFlagsBits = 0xD000000000000017;
    sub_1000D366C(v28);
    LOBYTE(v23[0]) = a1 & 1;
    sub_1000D395C();
    v27(*&v25[0], *(&v25[0] + 1));

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v15 = v8(a3, v7);
    v17 = v16;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v19 = sub_1000232F8(v15, v17), (v20 & 1) != 0))
    {
      v21 = *(v18[7] + v19);
    }

    else
    {
      v21 = 0;
    }

    swift_endAccess();

    if (a1)
    {
      v22 = 0x6C61755174736542;
    }

    else
    {
      v22 = 0x6C617551646F6F47;
    }

    sub_1000B7BF4(v21, v22, 0xEB00000000797469);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26 = v24;
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v25, v13);
    swift_willThrow();
    return sub_100072808(v25);
  }
}

uint64_t sub_1000A4050(char a1)
{
  v2 = sub_10008C47C();
  v3 = *(v2 + 48);
  v4 = (v3)(&type metadata for TVSettingsAppAppearanceEntity, v2);
  v6 = sub_1000540F4(v4, v5);

  if (v6 == 19)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_1000A1B28(v7, v19);
  if (v20 == 255)
  {
    v10 = 0xD000000000000014;
    sub_1000726F0(v19);
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(25);
    v23._countAndFlagsBits = 0xD000000000000017;
    v23._object = 0x80000001000DC890;
    sub_1000D366C(v23);
    LOBYTE(v19[0]) = a1;
    sub_1000D395C();
    sub_1000B7950(*&v21[0], *(&v21[0] + 1));

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v11 = v3();
    v13 = v12;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v15 = sub_1000232F8(v11, v13), (v16 & 1) != 0))
    {
      v17 = *(v14[7] + v15);
    }

    else
    {
      v17 = 0;
    }

    swift_endAccess();

    if (a1)
    {
      if (a1 == 1)
      {
        v18 = "DarkAppearanceOption";
        v10 = 0xD000000000000015;
      }

      else
      {
        v18 = "LightAppearanceOption";
        v10 = 0xD000000000000016;
      }
    }

    else
    {
      v18 = "BestQualityDownload";
    }

    sub_1000B7BF4(v17, v10, v18 | 0x8000000000000000);
  }

  else
  {
    v21[0] = v19[0];
    v21[1] = v19[1];
    v22 = v20;
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v21, v8);
    swift_willThrow();
    return sub_100072808(v21);
  }
}

uint64_t sub_1000A4368(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  v27 = a5;
  v7 = a2();
  v8 = *(v7 + 48);
  v9 = v8(a3, v7);
  v11 = sub_1000540F4(v9, v10);

  if (v11 == 19)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_1000A1B28(v12, v23);
  if (v24 == 255)
  {
    sub_1000726F0(v23);
    *&v25[0] = 0;
    *(&v25[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(25);
    v28._countAndFlagsBits = 0xD000000000000017;
    v28._object = 0x80000001000DC890;
    sub_1000D366C(v28);
    LOBYTE(v23[0]) = a1 & 1;
    sub_1000D395C();
    v27(*&v25[0], *(&v25[0] + 1));

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v15 = v8(a3, v7);
    v17 = v16;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v19 = sub_1000232F8(v15, v17), (v20 & 1) != 0))
    {
      v21 = *(v18[7] + v19);
    }

    else
    {
      v21 = 0;
    }

    swift_endAccess();

    v22 = "GoodQualityDownload";
    if (a1)
    {
      v22 = "BestQualityDownload";
    }

    sub_1000B7BF4(v21, 0xD000000000000013, (v22 - 32) | 0x8000000000000000);
  }

  else
  {
    v25[0] = v23[0];
    v25[1] = v23[1];
    v26 = v24;
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v25, v13);
    swift_willThrow();
    return sub_100072808(v25);
  }
}

uint64_t sub_1000A462C(char a1)
{
  v2 = sub_1000A64CC();
  v3 = *(v2 + 48);
  v4 = (v3)(&type metadata for TVSettingsPurchaseDefinitionEntity, v2);
  v6 = sub_1000540F4(v4, v5);

  if (v6 == 19)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_1000A1B28(v7, v18);
  if (v19 == 255)
  {
    sub_1000726F0(v18);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(25);
    v22._object = 0x80000001000DC890;
    v22._countAndFlagsBits = 0xD000000000000017;
    sub_1000D366C(v22);
    LOBYTE(v18[0]) = a1 & 1;
    sub_1000D395C();
    sub_1000B79B0(*&v20[0], *(&v20[0] + 1));

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v10 = v3();
    v12 = v11;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v14 = sub_1000232F8(v10, v12), (v15 & 1) != 0))
    {
      v16 = *(v13[7] + v14);
    }

    else
    {
      v16 = 0;
    }

    swift_endAccess();

    if (a1)
    {
      v17 = 48;
    }

    else
    {
      v17 = 49;
    }

    sub_1000B7BF4(v16, v17, 0xE100000000000000);
  }

  else
  {
    v20[0] = v18[0];
    v20[1] = v18[1];
    v21 = v19;
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v20, v8);
    swift_willThrow();
    return sub_100072808(v20);
  }
}

uint64_t sub_1000A48B8()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C550);
  sub_100006610(v10, qword_10013C550);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000A4BA4()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C568);
  sub_100006610(v0, qword_10013C568);
  return sub_1000D188C();
}

uint64_t sub_1000A4C08()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C580);
  v1 = sub_100006610(v0, qword_10013C580);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000A4CC8()
{
  result = swift_getKeyPath();
  qword_10013C598 = result;
  return result;
}

uint64_t sub_1000A4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_1000A4D14, 0, 0);
}

uint64_t sub_1000A4D14()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_1001221D8 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C598;
  *(v0 + 152) = qword_10013C598;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100126FA8, &qword_100126FB0);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_1000A4E80;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for VideosPurchaseResolution, v5);
}

uint64_t sub_1000A4E80()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_1000A4FF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A4FF0()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C598;
  v0[25] = qword_10013C598;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1000A50D4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t sub_1000A50D4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_1000A5244;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A5244()
{
  *(v0 + 227) = *(v0 + 226);
  sub_1000A7858();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_1000A52CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_1000A5340(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_1000A53B4()
{
  if (qword_1001221D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000A5414()
{
  result = qword_100126E48;
  if (!qword_100126E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E48);
  }

  return result;
}

unint64_t sub_1000A546C()
{
  result = qword_100126E50;
  if (!qword_100126E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E50);
  }

  return result;
}

uint64_t sub_1000A557C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001221D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C580);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_1000A5600(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_1000A4CF0(a1, v5, v4);
}

uint64_t sub_1000A56AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A7114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000A56F4()
{
  result = qword_100126E58;
  if (!qword_100126E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E58);
  }

  return result;
}

unint64_t sub_1000A574C()
{
  result = qword_100126E60;
  if (!qword_100126E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E60);
  }

  return result;
}

uint64_t sub_1000A57C0()
{
  **(v0 + 16) = sub_1000A37F8(sub_1000A64CC, &type metadata for TVSettingsPurchaseDefinitionEntity, &off_100118B98, sub_1000B79B0) & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A58A8()
{
  sub_1000A462C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A5944()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000A7518();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000A59B4()
{
  result = qword_100126E68;
  if (!qword_100126E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E68);
  }

  return result;
}

uint64_t sub_1000A5A08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000A6670();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000A5ABC()
{
  result = qword_100126E70;
  if (!qword_100126E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E70);
  }

  return result;
}

unint64_t sub_1000A5B14()
{
  result = qword_100126E78;
  if (!qword_100126E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E78);
  }

  return result;
}

unint64_t sub_1000A5B6C()
{
  result = qword_100126E80;
  if (!qword_100126E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E80);
  }

  return result;
}

uint64_t sub_1000A5BC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000A6670();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000A5C74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000A6670();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000A5D28()
{
  result = qword_100126E88;
  if (!qword_100126E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E88);
  }

  return result;
}

unint64_t sub_1000A5D80()
{
  result = qword_100126E90;
  if (!qword_100126E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E90);
  }

  return result;
}

unint64_t sub_1000A5DD8()
{
  result = qword_100126E98;
  if (!qword_100126E98)
  {
    sub_10000637C(&qword_100126EA0);
    sub_1000A5D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126E98);
  }

  return result;
}

uint64_t sub_1000A5E5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000A59B4();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000A5F84(uint64_t a1)
{
  v2 = sub_1000A64CC();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_1000A5B6C();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_1000A602C()
{
  sub_1000A63F8();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000A60D0(uint64_t a1)
{
  v2 = sub_1000A5B6C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000A611C(uint64_t a1)
{
  v2 = sub_1000A574C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000A6168(uint64_t a1)
{
  v2 = sub_1000A6210();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000A61B8()
{
  result = qword_100126EB8;
  if (!qword_100126EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126EB8);
  }

  return result;
}

unint64_t sub_1000A6210()
{
  result = qword_100126EC0;
  if (!qword_100126EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126EC0);
  }

  return result;
}

unint64_t sub_1000A6264()
{
  result = qword_100126EC8;
  if (!qword_100126EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126EC8);
  }

  return result;
}

unint64_t sub_1000A62BC()
{
  result = qword_100126ED0;
  if (!qword_100126ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126ED0);
  }

  return result;
}

unint64_t sub_1000A6318()
{
  result = qword_100126ED8;
  if (!qword_100126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126ED8);
  }

  return result;
}

unint64_t sub_1000A636C(void *a1)
{
  a1[1] = sub_1000A63A4();
  a1[2] = sub_1000A63F8();
  result = sub_1000A574C();
  a1[3] = result;
  return result;
}

unint64_t sub_1000A63A4()
{
  result = qword_100126F28;
  if (!qword_100126F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F28);
  }

  return result;
}

unint64_t sub_1000A63F8()
{
  result = qword_100126F30;
  if (!qword_100126F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F30);
  }

  return result;
}

unint64_t sub_1000A6450()
{
  result = qword_100126F38;
  if (!qword_100126F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F38);
  }

  return result;
}

unint64_t sub_1000A64A4(uint64_t a1)
{
  result = sub_1000A64CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A64CC()
{
  result = qword_100126F70;
  if (!qword_100126F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F70);
  }

  return result;
}

unint64_t sub_1000A6568()
{
  result = qword_100126F88;
  if (!qword_100126F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F88);
  }

  return result;
}

unint64_t sub_1000A65C0()
{
  result = qword_100126F90;
  if (!qword_100126F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F90);
  }

  return result;
}

unint64_t sub_1000A6618()
{
  result = qword_100126F98;
  if (!qword_100126F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126F98);
  }

  return result;
}

unint64_t sub_1000A6670()
{
  result = qword_100126FA0;
  if (!qword_100126FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126FA0);
  }

  return result;
}

uint64_t sub_1000A66C4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_1000A7960();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsPurchaseDefinitionWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = qword_100126E10;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_1000A7804();
  sub_1000A79B4();
  sub_1000A574C();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100126E20;
  v53 = off_100126E28;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_1000A6D30@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A6DA4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100122208 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C608;
  v21 = *(qword_10013C608 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_1000236FC(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_1000A7080()
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_1000A7114()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100126FC0);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_1000A5B6C();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100126FC8);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_1000A7804();
  sub_1000D156C();
  return v22;
}

uint64_t sub_1000A7518()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v10 = &type metadata for TVSettingsPurchaseDefinitionEntity;
  sub_100006334(&qword_100122D60);
  v9 = sub_1000D361C();
  sub_100006334(&qword_100126E40);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100126FA8, &qword_100126FB0);
  sub_1000A7804();
  sub_1000D178C();
  return v9;
}

unint64_t sub_1000A7804()
{
  result = qword_100126FB8;
  if (!qword_100126FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126FB8);
  }

  return result;
}

unint64_t sub_1000A7858()
{
  result = qword_100126FD0;
  if (!qword_100126FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126FD0);
  }

  return result;
}

unint64_t sub_1000A78E4(uint64_t a1)
{
  result = sub_1000A790C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A790C()
{
  result = qword_100127020;
  if (!qword_100127020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127020);
  }

  return result;
}

unint64_t sub_1000A7960()
{
  result = qword_100127028;
  if (!qword_100127028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127028);
  }

  return result;
}

unint64_t sub_1000A79B4()
{
  result = qword_100127030;
  if (!qword_100127030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100127030);
  }

  return result;
}

uint64_t sub_1000A7A08()
{
  sub_10000637C(&qword_100122978);
  sub_10000637C(&qword_100122970);
  sub_10000637C(&qword_100122968);
  sub_10000637C(&qword_100122960);
  sub_10000FC38(&qword_1001229A0, &qword_100122960);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A7BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100006334(&qword_100127038);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100006334(&qword_100127040);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A7CF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_100006334(&qword_100127038);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100006334(&qword_100127040);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A7E50()
{
  sub_100077A28();
  if (v0 <= 0x3F)
  {
    sub_1000A8008(319, &qword_1001258E0, &type metadata for TVWidgetNoContentState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000B4088(319, &qword_1001270B0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000A8008(319, &qword_100122328, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000B4088(319, &qword_1001270B8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1000A8008(319, &unk_1001270C0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000A8008(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000A80B0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1000D2BBC();
}

uint64_t sub_1000A8280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D329C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D323C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVWidgetView(0);
  sub_1000B27C4(v10);
  sub_1000A84E8();
  v12 = v1 + *(v11 + 40);
  v13 = *(v12 + 16);
  v28[0] = *v12;
  v28[1] = v13;
  v29 = *(v12 + 32);
  sub_1000B2CD0();
  sub_100099378(v10, v6);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  sub_1000A84E8();
  v22 = sub_100006334(&qword_100127108);
  v23 = a1 + *(v22 + 36);
  sub_1000A8678(v23);
  v24 = sub_1000D235C();
  v25 = v23 + *(sub_100006334(&qword_100127110) + 36);
  *v25 = v24;
  *(v25 + 8) = v15;
  *(v25 + 16) = v17;
  *(v25 + 24) = v19;
  *(v25 + 32) = v21;
  *(v25 + 40) = 0;
  result = swift_getKeyPath();
  v27 = a1 + *(v22 + 40);
  *v27 = result;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  return result;
}

uint64_t sub_1000A84E8()
{
  v1 = v0;
  v2 = sub_1000D31DC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TVWidgetView(0);
  sub_1000B2A4C(v8);
  sub_1000D31CC();
  v10 = sub_1000D31BC();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  if ((v10 & 1) != 0 && (sub_1000B23B0(*(v1 + *(v9 + 32)), *(v1 + *(v9 + 32) + 8)) & 1) == 0)
  {
    return sub_1000D325C();
  }

  if (sub_1000B23B0(*(v1 + *(v9 + 32)), *(v1 + *(v9 + 32) + 8)))
  {
    return sub_1000D324C();
  }

  return sub_1000D328C();
}

uint64_t sub_1000A8678@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  v173 = type metadata accessor for TVWidgetExtraLarge(0);
  __chkstk_darwin(v173);
  v149 = &v148 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_100006334(&qword_100127118);
  v150 = *(v160 - 8);
  __chkstk_darwin(v160);
  v154 = &v148 - v3;
  v156 = sub_100006334(&qword_100127120);
  __chkstk_darwin(v156);
  v157 = &v148 - v4;
  v188 = sub_100006334(&qword_100127128);
  __chkstk_darwin(v188);
  v159 = &v148 - v5;
  v155 = type metadata accessor for TVWidgetLarge(0);
  __chkstk_darwin(v155);
  v152 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100006334(&qword_100127130);
  v153 = *(v158 - 8);
  __chkstk_darwin(v158);
  v167 = &v148 - v7;
  v189 = type metadata accessor for TVWidgetMedium(0);
  __chkstk_darwin(v189);
  v164 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_100127138);
  v166 = *(v9 - 8);
  __chkstk_darwin(v9);
  v165 = &v148 - v10;
  v191 = sub_100006334(&qword_100127140);
  __chkstk_darwin(v191);
  v192 = &v148 - v11;
  v184 = sub_100006334(&qword_100127148);
  __chkstk_darwin(v184);
  v186 = &v148 - v12;
  v181 = sub_100006334(&qword_100127150);
  __chkstk_darwin(v181);
  v182 = &v148 - v13;
  v185 = sub_100006334(&qword_100127158);
  __chkstk_darwin(v185);
  v183 = &v148 - v14;
  v190 = sub_100006334(&qword_100127160);
  __chkstk_darwin(v190);
  v187 = &v148 - v15;
  v16 = sub_1000D232C();
  v176 = *(v16 - 8);
  v177 = v16;
  __chkstk_darwin(v16);
  v175 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for TVWidgetSmall(0);
  __chkstk_darwin(v179);
  v161 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_100006334(&qword_100127168);
  v163 = *(v171 - 8);
  __chkstk_darwin(v171);
  v162 = &v148 - v19;
  v169 = sub_100006334(&qword_100127170);
  __chkstk_darwin(v169);
  v170 = (&v148 - v20);
  v168 = sub_1000D329C();
  v21 = *(v168 - 8);
  v22 = __chkstk_darwin(v168);
  v24 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v148 - v25;
  v180 = sub_100006334(&qword_100127178);
  __chkstk_darwin(v180);
  v172 = &v148 - v27;
  v28 = sub_1000D323C();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v174 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v148 - v32;
  v151 = type metadata accessor for TVWidgetView(0);
  sub_1000B27C4(v33);
  v34 = *(v29 + 88);
  v178 = v28;
  v35 = v34(v33, v28);
  v36 = v35;
  if (v35 == enum case for WidgetFamily.systemSmall(_:))
  {
    v173 = v9;
    sub_1000A84E8();
    sub_1000D325C();
    v37 = sub_1000D326C();
    v38 = *(v21 + 8);
    v39 = v168;
    v38(v24, v168);
    v38(v26, v39);
    v40 = *v1;
    if (v37)
    {
      v41 = *(v1 + 8);
      v42 = v172;
      if (v41 != 4)
      {
LABEL_34:
        v63 = v170;
        *v170 = v40;
        *(v63 + 8) = v41;
        v63[2] = 3;
        swift_storeEnumTagMultiPayload();
        sub_1000B3D18();
        v64 = sub_1000B3DC0(&qword_1001271A0, type metadata accessor for TVWidgetSmall);
        v65 = sub_1000B3D6C();

        *&v201 = v179;
        *(&v201 + 1) = &type metadata for LinearGradient;
        *&v202 = v64;
        *(&v202 + 1) = v65;
        swift_getOpaqueTypeConformance2();
        sub_1000D229C();
LABEL_41:
        sub_10000F8D0(v42, v182, &qword_100127178);
        swift_storeEnumTagMultiPayload();
        sub_1000B3C10();
        v98 = sub_1000B3DC0(&qword_1001271B0, type metadata accessor for TVWidgetMedium);
        v99 = sub_1000B3D6C();
        *&v201 = v189;
        *(&v201 + 1) = &type metadata for LinearGradient;
        *&v202 = v98;
        *(&v202 + 1) = v99;
        swift_getOpaqueTypeConformance2();
        v100 = v183;
        sub_1000D229C();
        sub_10000F8D0(v100, v186, &qword_100127158);
        swift_storeEnumTagMultiPayload();
        sub_1000B3B08();
        sub_1000B3E08();
        v101 = v187;
        sub_1000D229C();
        sub_10000F938(v100, &qword_100127158);
        sub_10000F8D0(v101, v192, &qword_100127160);
        swift_storeEnumTagMultiPayload();
        sub_1000B3A7C();
        sub_1000D229C();
        sub_10000F938(v101, &qword_100127160);
        return sub_10000F938(v42, &qword_100127178);
      }

      if (v40)
      {
        if (v40 >> 62)
        {
          if (sub_1000D397C())
          {
            goto LABEL_7;
          }
        }

        else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_7:
          LOBYTE(v41) = 4;
          goto LABEL_34;
        }
      }

      LOBYTE(v41) = 0;
      goto LABEL_34;
    }

    v48 = v174;
    v49 = v178;
    (*(v29 + 104))(v174, v36, v178);
    v50 = sub_1000AA134(v40);
    (*(v29 + 8))(v48, v49);
    v51 = *(v1 + 8);
    if (v51 != 4)
    {
LABEL_40:
      v84 = *(v1 + 96);
      v205 = *(v1 + 80);
      v206 = v84;
      v207 = *(v1 + 112);
      v85 = *(v1 + 64);
      v203 = *(v1 + 48);
      v204 = v85;
      v86 = *(v1 + 32);
      v201 = *(v1 + 16);
      v202 = v86;
      sub_1000B3F74(&v201, &v198);
      v87 = v161;
      sub_1000A84E8();
      *v87 = v50;
      *(v87 + 8) = v51;
      v88 = v206;
      *(v87 + 80) = v205;
      *(v87 + 96) = v88;
      *(v87 + 112) = v207;
      v89 = v202;
      *(v87 + 16) = v201;
      *(v87 + 32) = v89;
      v90 = v204;
      *(v87 + 48) = v203;
      *(v87 + 64) = v90;
      v91 = v175;
      v92 = sub_1000D231C();
      v178 = &v148;
      __chkstk_darwin(v92);
      sub_1000D2B5C();
      v93 = sub_1000B3DC0(&qword_1001271A0, type metadata accessor for TVWidgetSmall);
      v145 = sub_1000B3D6C();
      v94 = v162;
      v95 = v179;
      sub_1000D275C();
      (*(v176 + 8))(v91, v177);
      sub_1000B3FD0(v87, type metadata accessor for TVWidgetSmall);
      v96 = v163;
      v97 = v171;
      (*(v163 + 16))(v170, v94, v171);
      swift_storeEnumTagMultiPayload();
      sub_1000B3D18();
      *&v198 = v95;
      *(&v198 + 1) = &type metadata for LinearGradient;
      *&v199 = v93;
      *(&v199 + 1) = v145;
      swift_getOpaqueTypeConformance2();
      v42 = v172;
      sub_1000D229C();
      (*(v96 + 8))(v94, v97);
      goto LABEL_41;
    }

    if (v40)
    {
      if (v40 >> 62)
      {
        if (sub_1000D397C())
        {
          goto LABEL_18;
        }
      }

      else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        LOBYTE(v51) = 4;
        goto LABEL_40;
      }
    }

    LOBYTE(v51) = 0;
    goto LABEL_40;
  }

  if (v35 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v35 == enum case for WidgetFamily.systemLarge(_:))
    {
      v52 = *v1;
      v53 = v174;
      v54 = v178;
      (*(v29 + 104))(v174, v35, v178);
      v55 = sub_1000AA134(v52);
      (*(v29 + 8))(v53, v54);
      v56 = *(v1 + 8);
      if (v56 != 4)
      {
LABEL_44:
        v102 = *(v1 + 96);
        v205 = *(v1 + 80);
        v206 = v102;
        v207 = *(v1 + 112);
        v103 = *(v1 + 64);
        v203 = *(v1 + 48);
        v204 = v103;
        v104 = *(v1 + 32);
        v201 = *(v1 + 16);
        v202 = v104;
        v105 = v155;
        sub_1000B3F74(&v201, &v198);
        v106 = v152;
        sub_1000A84E8();
        v107 = (v1 + *(v151 + 40));
        v108 = v107[1];
        v198 = *v107;
        v199 = v108;
        v200 = *(v107 + 32);
        v109 = sub_1000B2CD0();
        *v106 = v55;
        *(v106 + 8) = v56;
        v110 = v206;
        *(v106 + 80) = v205;
        *(v106 + 96) = v110;
        *(v106 + 112) = v207;
        v111 = v204;
        *(v106 + 48) = v203;
        *(v106 + 64) = v111;
        v112 = v202;
        *(v106 + 16) = v201;
        *(v106 + 32) = v112;
        v113 = v106 + *(v105 + 32);
        *v113 = v109;
        *(v113 + 8) = v114;
        *(v113 + 16) = v115;
        *(v113 + 24) = v116;
        v117 = v175;
        v118 = sub_1000D231C();
        v189 = &v148;
        __chkstk_darwin(v118);
        sub_1000D2B5C();
        v119 = sub_1000B3DC0(&qword_1001271C0, type metadata accessor for TVWidgetLarge);
        v146 = sub_1000B3D6C();
        v120 = v167;
        sub_1000D275C();
        (*(v176 + 8))(v117, v177);
        sub_1000B3FD0(v106, type metadata accessor for TVWidgetLarge);
        v121 = v153;
        v79 = v158;
        (*(v153 + 16))(v157, v120, v158);
        swift_storeEnumTagMultiPayload();
        v194 = v105;
        v195 = &type metadata for LinearGradient;
        v196 = v119;
        v197 = v146;
        swift_getOpaqueTypeConformance2();
        v122 = sub_1000B3DC0(&qword_1001271C8, type metadata accessor for TVWidgetExtraLarge);
        v194 = v173;
        v195 = &type metadata for LinearGradient;
        v196 = v122;
        v197 = v146;
        swift_getOpaqueTypeConformance2();
        v123 = v159;
        sub_1000D229C();
        sub_10000F8D0(v123, v186, &qword_100127128);
        swift_storeEnumTagMultiPayload();
        sub_1000B3B08();
        sub_1000B3E08();
        v124 = v187;
        sub_1000D229C();
        sub_10000F938(v123, &qword_100127128);
        sub_10000F8D0(v124, v192, &qword_100127160);
        swift_storeEnumTagMultiPayload();
        sub_1000B3A7C();
        sub_1000D229C();
        sub_10000F938(v124, &qword_100127160);
        v82 = *(v121 + 8);
        v83 = v167;
        return v82(v83, v79);
      }

      if (v52)
      {
        if (v52 >> 62)
        {
          if (sub_1000D397C())
          {
            goto LABEL_24;
          }
        }

        else if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_24:
          LOBYTE(v56) = 4;
          goto LABEL_44;
        }
      }

      LOBYTE(v56) = 0;
      goto LABEL_44;
    }

    if (v35 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      swift_storeEnumTagMultiPayload();
      sub_1000B3A7C();
      sub_1000D229C();
      return (*(v29 + 8))(v33, v178);
    }

    v57 = *v1;
    v58 = v174;
    v59 = v178;
    (*(v29 + 104))(v174, v35, v178);
    v60 = sub_1000AA134(v57);
    (*(v29 + 8))(v58, v59);
    v61 = *(v1 + 8);
    if (v61 != 4)
    {
LABEL_49:
      v125 = *(v1 + 96);
      v205 = *(v1 + 80);
      v206 = v125;
      v207 = *(v1 + 112);
      v126 = *(v1 + 64);
      v203 = *(v1 + 48);
      v204 = v126;
      v127 = *(v1 + 32);
      v201 = *(v1 + 16);
      v202 = v127;
      sub_1000B3F74(&v201, &v198);
      v128 = v149;
      sub_1000A84E8();
      *v128 = v60;
      *(v128 + 8) = v61;
      v129 = v206;
      *(v128 + 80) = v205;
      *(v128 + 96) = v129;
      *(v128 + 112) = v207;
      v130 = v202;
      *(v128 + 16) = v201;
      *(v128 + 32) = v130;
      v131 = v204;
      *(v128 + 48) = v203;
      *(v128 + 64) = v131;
      v132 = v175;
      v133 = sub_1000D231C();
      __chkstk_darwin(v133);
      sub_1000D2B5C();
      v134 = sub_1000B3DC0(&qword_1001271C8, type metadata accessor for TVWidgetExtraLarge);
      v147 = sub_1000B3D6C();
      v135 = v154;
      v136 = v173;
      sub_1000D275C();
      (*(v176 + 8))(v132, v177);
      sub_1000B3FD0(v128, type metadata accessor for TVWidgetExtraLarge);
      v137 = v150;
      v138 = v135;
      v139 = v160;
      (*(v150 + 16))(v157, v138, v160);
      swift_storeEnumTagMultiPayload();
      v140 = sub_1000B3DC0(&qword_1001271C0, type metadata accessor for TVWidgetLarge);
      *&v198 = v155;
      *(&v198 + 1) = &type metadata for LinearGradient;
      *&v199 = v140;
      *(&v199 + 1) = v147;
      swift_getOpaqueTypeConformance2();
      *&v198 = v136;
      *(&v198 + 1) = &type metadata for LinearGradient;
      *&v199 = v134;
      *(&v199 + 1) = v147;
      swift_getOpaqueTypeConformance2();
      v141 = v159;
      v142 = v139;
      sub_1000D229C();
      sub_10000F8D0(v141, v186, &qword_100127128);
      swift_storeEnumTagMultiPayload();
      sub_1000B3B08();
      sub_1000B3E08();
      v143 = v187;
      sub_1000D229C();
      sub_10000F938(v141, &qword_100127128);
      sub_10000F8D0(v143, v192, &qword_100127160);
      swift_storeEnumTagMultiPayload();
      sub_1000B3A7C();
      sub_1000D229C();
      sub_10000F938(v143, &qword_100127160);
      return (*(v137 + 8))(v154, v142);
    }

    if (v57)
    {
      if (v57 >> 62)
      {
        if (sub_1000D397C())
        {
          goto LABEL_30;
        }
      }

      else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_30:
        LOBYTE(v61) = 4;
        goto LABEL_49;
      }
    }

    LOBYTE(v61) = 0;
    goto LABEL_49;
  }

  v173 = v9;
  v43 = *v1;
  v44 = v174;
  v45 = v178;
  (*(v29 + 104))(v174, v35, v178);
  v46 = sub_1000AA134(v43);
  (*(v29 + 8))(v44, v45);
  v47 = *(v1 + 8);
  if (v47 == 4)
  {
    if (v43)
    {
      if (v43 >> 62)
      {
        if (sub_1000D397C())
        {
          goto LABEL_13;
        }
      }

      else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_13:
        LOBYTE(v47) = 4;
        goto LABEL_37;
      }
    }

    LOBYTE(v47) = 0;
  }

LABEL_37:
  v66 = *(v1 + 96);
  v205 = *(v1 + 80);
  v206 = v66;
  v207 = *(v1 + 112);
  v67 = *(v1 + 64);
  v203 = *(v1 + 48);
  v204 = v67;
  v68 = *(v1 + 32);
  v201 = *(v1 + 16);
  v202 = v68;
  sub_1000B3F74(&v201, &v198);
  v69 = v164;
  sub_1000A84E8();
  *v69 = v46;
  *(v69 + 8) = v47;
  v70 = v206;
  *(v69 + 80) = v205;
  *(v69 + 96) = v70;
  *(v69 + 112) = v207;
  v71 = v202;
  *(v69 + 16) = v201;
  *(v69 + 32) = v71;
  v72 = v204;
  *(v69 + 48) = v203;
  *(v69 + 64) = v72;
  v73 = v175;
  v74 = sub_1000D231C();
  v179 = &v148;
  __chkstk_darwin(v74);
  sub_1000D2B5C();
  v75 = sub_1000B3DC0(&qword_1001271B0, type metadata accessor for TVWidgetMedium);
  v144 = sub_1000B3D6C();
  v76 = v165;
  v77 = v189;
  sub_1000D275C();
  (*(v176 + 8))(v73, v177);
  sub_1000B3FD0(v69, type metadata accessor for TVWidgetMedium);
  v78 = v166;
  v79 = v173;
  (*(v166 + 16))(v182, v76, v173);
  swift_storeEnumTagMultiPayload();
  sub_1000B3C10();
  *&v198 = v77;
  *(&v198 + 1) = &type metadata for LinearGradient;
  *&v199 = v75;
  *(&v199 + 1) = v144;
  swift_getOpaqueTypeConformance2();
  v80 = v183;
  sub_1000D229C();
  sub_10000F8D0(v80, v186, &qword_100127158);
  swift_storeEnumTagMultiPayload();
  sub_1000B3B08();
  sub_1000B3E08();
  v81 = v187;
  sub_1000D229C();
  sub_10000F938(v80, &qword_100127158);
  sub_10000F8D0(v81, v192, &qword_100127160);
  swift_storeEnumTagMultiPayload();
  sub_1000B3A7C();
  sub_1000D229C();
  sub_10000F938(v81, &qword_100127160);
  v82 = *(v78 + 8);
  v83 = v76;
  return v82(v83, v79);
}

id sub_1000AA134(unint64_t a1)
{
  v2 = sub_1000D323C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    if (a1 >> 62)
    {
LABEL_53:
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
      v28 = sub_1000D397C() == 0;
      v33 = sub_1000D397C();
      goto LABEL_6;
    }

    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v33 == 0;
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v6 = 1;
  }

  v28 = v6;
LABEL_6:
  v7 = 0;
  v30 = a1 + 32;
  v32 = a1 & 0xC000000000000001;
  v39 = enum case for WidgetFamily.systemMedium(_:);
  v8 = (v3 + 104);
  v9 = (v3 + 8);
  v38 = enum case for WidgetFamily.systemLarge(_:);
  v35 = enum case for WidgetFamily.systemExtraLarge(_:);
  v37 = &_swiftEmptyArrayStorage;
  v36 = enum case for WidgetFamily.systemSmall(_:);
  v29 = xmmword_1000E9290;
  v24 = xmmword_1000E92B0;
  v27 = xmmword_1000E92A0;
  v34 = a1;
  while (1)
  {
    if (a1 && v7 < v33)
    {
      if (v32)
      {
        v11 = sub_1000D38FC();
      }

      else
      {
        if (v7 >= *(v31 + 16))
        {
          goto LABEL_52;
        }

        v11 = *(v30 + 8 * v7);
      }

      type metadata accessor for TVWidgetContentRefinedViewModel();
      v12 = swift_allocObject();
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      sub_1000D36AC();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000D36DC();
      }

      sub_1000D36EC();
      goto LABEL_39;
    }

    if (!v7)
    {
      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v44 = qword_10013C430;
      type metadata accessor for TVWidgetContentViewModel();
      v45 = 0u;
      v46 = 0u;
      swift_allocObject();
      v15 = &v44;
      goto LABEL_26;
    }

    v13 = *v8;
    (*v8)(v5, v39, v2);
    sub_1000B3DC0(&qword_1001232E8, &type metadata accessor for WidgetFamily);
    sub_1000D369C();
    sub_1000D369C();
    v14 = *v9;
    (*v9)(v5, v2);
    if (v42 != v41)
    {
      v13(v5, v38, v2);
      sub_1000D369C();
      sub_1000D369C();
      v14(v5, v2);
      if (v42 != v41)
      {
        v13(v5, v35, v2);
        sub_1000D369C();
        sub_1000D369C();
        v14(v5, v2);
        if (v42 != v41)
        {
          goto LABEL_40;
        }
      }

      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v17 = qword_10013C430;
      v42 = v29;
      v41 = v27;
      v40 = v7;
      v37 = qword_10013C430;
      v56._countAndFlagsBits = sub_1000D39BC();
      sub_1000D366C(v56);

      v40 = v7;
      v57._countAndFlagsBits = sub_1000D39BC();
      sub_1000D366C(v57);

      v25 = v42;
      v26 = v41;
      v53 = v17;
      v54 = v42;
      v55 = v41;
      type metadata accessor for TVWidgetContentViewModel();
      swift_allocObject();
      v18 = &v53;
      goto LABEL_35;
    }

    if (!v28)
    {
      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v19 = qword_10013C430;
      v42 = v29;
      v41 = v24;
      v40 = v7;
      v37 = qword_10013C430;
      v58._countAndFlagsBits = sub_1000D39BC();
      sub_1000D366C(v58);

      v40 = v7;
      v59._countAndFlagsBits = sub_1000D39BC();
      sub_1000D366C(v59);

      v25 = v42;
      v26 = v41;
      v50 = v19;
      v52 = v41;
      v51 = v42;
      type metadata accessor for TVWidgetContentViewModel();
      swift_allocObject();
      v18 = &v50;
LABEL_35:
      v16 = sub_100089F08(v18);

      goto LABEL_36;
    }

    if (qword_100122138 != -1)
    {
      swift_once();
    }

    v47 = qword_10013C430;
    type metadata accessor for TVWidgetContentViewModel();
    v48 = 0u;
    v49 = 0u;
    swift_allocObject();
    v15 = &v47;
LABEL_26:
    v16 = sub_100089F08(v15);
LABEL_36:
    type metadata accessor for TVWidgetContentRefinedViewModel();
    v20 = swift_allocObject();
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 16) = v16;
    *(v20 + 24) = 1;

    sub_1000D36AC();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();

LABEL_39:
    v37 = v43;
LABEL_40:
    v21 = *v8;
    (*v8)(v5, v36, v2);
    sub_1000B3DC0(&qword_1001232E8, &type metadata accessor for WidgetFamily);
    sub_1000D369C();
    sub_1000D369C();
    v22 = *v9;
    (*v9)(v5, v2);
    if (v42 == v41 && !v7)
    {
      return v37;
    }

    v21(v5, v39, v2);
    sub_1000D369C();
    sub_1000D369C();
    v22(v5, v2);
    if (v42 == v41 && v7 == 1)
    {
      return v37;
    }

    v21(v5, v38, v2);
    sub_1000D369C();
    sub_1000D369C();
    v22(v5, v2);
    if (v42 == v41 && v7 == 2)
    {
      return v37;
    }

    v21(v5, v35, v2);
    sub_1000D369C();
    v3 = v5;
    sub_1000D369C();
    v22(v5, v2);
    if (v42 == v41)
    {
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 6)
      {
        return v37;
      }
    }

    else if (v7 == 7)
    {
      return v37;
    }

    v10 = __OFADD__(v7++, 1);
    a1 = v34;
    if (v10)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }
  }
}

uint64_t sub_1000AABE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetView(0);
  v5 = sub_1000B23B0(*(a1 + *(v4 + 32)), *(a1 + *(v4 + 32) + 8));
  v6 = 72;
  if (v5)
  {
    v6 = 32;
  }

  v7 = 80;
  if (v5)
  {
    v7 = 40;
  }

  v8 = 88;
  if (v5)
  {
    v8 = 48;
  }

  v9 = 96;
  if (v5)
  {
    v9 = 56;
  }

  v10 = *(a1 + v6);
  v11 = *(a1 + v7);
  v12 = *(a1 + v8);
  v13 = *(a1 + v9);

  *a2 = result;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  return result;
}

uint64_t sub_1000AAC98@<X0>(void *a1@<X8>)
{
  result = sub_1000D20AC();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1000AACCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for TVWidgetNoContentTextView();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  __chkstk_darwin(v3);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_1001274E0);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v42 - v9;
  v10 = sub_100006334(&qword_1001274E8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_100006334(&qword_1001274F0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v44 = sub_100006334(&qword_1001274F8);
  __chkstk_darwin(v44);
  v17 = &v42 - v16;
  v18 = sub_100006334(&qword_100127500);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v42 - v22;
  *v17 = sub_1000D210C();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v24 = sub_100006334(&qword_100127508);
  sub_1000AB304(a1, &v17[*(v24 + 44)]);
  v25 = *(a1 + 8);
  if (v25 == 4)
  {
    sub_10000F8D0(v17, v12, &qword_1001274F8);
    v26 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000B4BCC();
    sub_10000FC38(&qword_100127518, &qword_1001274F8);
    sub_1000D229C();
    sub_10000F938(v17, &qword_1001274F8);
    v28 = v45;
    v27 = v46;
  }

  else
  {
    sub_1000D1CDC();
    sub_1000D2B5C();
    sub_1000D1C8C();
    sub_10000F8D0(v17, v15, &qword_1001274F8);
    v29 = &v15[*(v13 + 36)];
    v30 = v51;
    *v29 = v50;
    *(v29 + 1) = v30;
    *(v29 + 2) = v52;
    sub_10000F8D0(v15, v12, &qword_1001274F0);
    swift_storeEnumTagMultiPayload();
    sub_1000B4BCC();
    sub_10000FC38(&qword_100127518, &qword_1001274F8);
    sub_1000D229C();
    sub_10000F938(v15, &qword_1001274F0);
    sub_10000F938(v17, &qword_1001274F8);
    v31 = v46;
    v32 = *(v46 + 20);
    v33 = enum case for WidgetFamily.systemSmall(_:);
    v34 = sub_1000D323C();
    v35 = v43;
    (*(*(v34 - 8) + 104))(&v43[v32], v33, v34);
    sub_1000D324C();
    v36 = sub_1000D287C();
    *v35 = v25;
    v37 = &v35[*(v31 + 28)];
    *v37 = v36;
    *(v37 + 1) = 0x3FE999999999999ALL;
    v37[16] = 1;
    v28 = v45;
    sub_1000B4C84(v35, v45, type metadata accessor for TVWidgetNoContentTextView);
    v26 = 0;
    v27 = v31;
  }

  (*(v47 + 56))(v28, v26, 1, v27);
  sub_10000F8D0(v23, v21, &qword_100127500);
  v38 = v48;
  sub_10000F8D0(v28, v48, &qword_1001274E0);
  v39 = v49;
  sub_10000F8D0(v21, v49, &qword_100127500);
  v40 = sub_100006334(&qword_100127520);
  sub_10000F8D0(v38, v39 + *(v40 + 48), &qword_1001274E0);
  sub_10000F938(v28, &qword_1001274E0);
  sub_10000F938(v23, &qword_100127500);
  sub_10000F938(v38, &qword_1001274E0);
  return sub_10000F938(v21, &qword_100127500);
}

uint64_t sub_1000AB304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_100006334(&qword_100127528);
  __chkstk_darwin(v59);
  v5 = &v50 - v4;
  v6 = sub_1000D1E0C();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100006334(&qword_100127530);
  __chkstk_darwin(v57);
  v9 = &v50 - v8;
  v10 = sub_100006334(&qword_100127538);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v50 - v11;
  v12 = sub_1000D323C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TVWidgetContentView(0);
  __chkstk_darwin(v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100006334(&qword_100127540);
  v20 = __chkstk_darwin(v19 - 8);
  v56 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v23 = *a1;
  _ZF = (*a1 & 0xC000000000000001) == 0;
  v60 = v5;
  v61 = a2;
  v58 = &v50 - v25;
  if (_ZF)
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v49 = *(v23 + 32);
  }

  else
  {
    v49 = sub_1000D38FC();
  }

  (*(v13 + 104))(v15, enum case for WidgetFamily.systemSmall(_:), v12);
  v26 = *(v49 + 16);

  v27 = sub_1000D1EDC();
  v28 = sub_1000D1ECC();
  v55 = v10;
  if (v27)
  {
    if ((v28 & ~v27) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v28)
  {
    v27 = 0;
    goto LABEL_11;
  }

  v27 |= v28;
LABEL_11:
  v29 = sub_1000D2B8C();
  *v18 = 0;
  (*(v13 + 32))(&v18[v16[5]], v15, v12);
  *&v18[v16[6]] = v26;
  v30 = &v18[v16[7]];
  __asm { FMOV            V1.2D, #16.0 }

  *v30 = xmmword_1000EBB20;
  *(v30 + 1) = _Q1;
  v30[32] = 1;
  *(v30 + 33) = v67;
  v30[35] = v68;
  *(v30 + 9) = v27;
  *(v30 + 5) = v29;
  *(v30 + 3) = xmmword_1000EBB30;
  v30[64] = 0;
  *(v30 + 65) = *v66;
  *(v30 + 17) = *&v66[3];
  *(v30 + 9) = 0;
  *(v30 + 79) = 0;
  *(v30 + 83) = v64;
  v30[87] = v65;
  *(v30 + 11) = 0;
  if (*(v49 + 24) == 1)
  {
    sub_1000B4CEC(v18, v9, type metadata accessor for TVWidgetContentView);
    v35 = v57;
    *&v9[*(v57 + 36)] = 0x3FF0000000000000;
    v36 = v50;
    sub_1000D1DFC();
    v37 = sub_1000B4D54();
    v38 = v53;
    sub_1000D27AC();
    (*(v51 + 8))(v36, v52);
    sub_10000F938(v9, &qword_100127530);
    v40 = v54;
    v39 = v55;
    (*(v54 + 16))(v60, v38, v55);
    swift_storeEnumTagMultiPayload();
    v62 = v35;
    v63 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView);
    v41 = v56;
    sub_1000D229C();
    (*(v40 + 8))(v38, v39);
  }

  else
  {
    sub_1000B4CEC(v18, v60, type metadata accessor for TVWidgetContentView);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1000B4D54();
    v62 = v57;
    v63 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1000B3DC0(&qword_100127550, type metadata accessor for TVWidgetContentView);
    v41 = v56;
    sub_1000D229C();
  }

  sub_1000B3FD0(v18, type metadata accessor for TVWidgetContentView);
  v43 = v58;
  sub_10000F998(v41, v58, &qword_100127540);
  v44 = sub_10008885C();
  v46 = v45;

  v47 = v61;
  sub_10000F998(v43, v61, &qword_100127540);
  result = sub_100006334(&qword_100127568);
  v48 = (v47 + *(result + 52));
  *v48 = v44;
  v48[1] = v46;
  return result;
}

uint64_t sub_1000ABA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  *a5 = sub_1000D21BC();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  sub_100006334(a3);
  return a4(a2, a1);
}

uint64_t sub_1000ABAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41[1] = a2;
  v51 = a3;
  v4 = type metadata accessor for TVWidgetNoContentTextView();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  __chkstk_darwin(v4);
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006334(&qword_1001274E0);
  v8 = __chkstk_darwin(v7 - 8);
  v50 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v41 - v10;
  v43 = sub_100006334(&qword_100127578);
  __chkstk_darwin(v43);
  v12 = v41 - v11;
  v45 = sub_100006334(&qword_100127580);
  __chkstk_darwin(v45);
  v14 = v41 - v13;
  v44 = sub_100006334(&qword_100127588);
  __chkstk_darwin(v44);
  v16 = v41 - v15;
  v17 = sub_100006334(&qword_100127590);
  v18 = __chkstk_darwin(v17 - 8);
  v46 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = v41 - v20;
  v21 = *(a1 + 104);
  *v16 = sub_1000D210C();
  *(v16 + 1) = v21;
  v16[16] = 0;
  sub_100006334(&qword_100127598);
  *&v53 = *a1;
  swift_getKeyPath();

  sub_100006334(&qword_1001275A0);
  sub_100006334(&qword_1001275A8);
  sub_10000FC38(&qword_1001275B0, &qword_1001275A0);
  sub_1000B50A0();
  sub_1000D2ABC();
  v22 = *(a1 + 8);
  if (v22 == 4)
  {
    sub_10000F8D0(v16, v12, &qword_100127588);
    v23 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000B5190();
    sub_10000FC38(&qword_1001275C8, &qword_100127588);
    sub_1000D229C();
    sub_10000F938(v16, &qword_100127588);
    v25 = v47;
    v24 = v48;
  }

  else
  {
    sub_1000D1CDC();
    sub_1000D2B5C();
    sub_1000D1C8C();
    sub_10000F8D0(v16, v14, &qword_100127588);
    v26 = &v14[*(v45 + 36)];
    v27 = v54;
    *v26 = v53;
    *(v26 + 1) = v27;
    *(v26 + 2) = v55;
    sub_10000F8D0(v14, v12, &qword_100127580);
    swift_storeEnumTagMultiPayload();
    sub_1000B5190();
    sub_10000FC38(&qword_1001275C8, &qword_100127588);
    sub_1000D229C();
    sub_10000F938(v14, &qword_100127580);
    sub_10000F938(v16, &qword_100127588);
    v28 = v48;
    v29 = *(v48 + 20);
    v30 = enum case for WidgetFamily.systemMedium(_:);
    v31 = sub_1000D323C();
    v32 = v42;
    (*(*(v31 - 8) + 104))(&v42[v29], v30, v31);
    sub_1000D324C();
    v33 = sub_1000D287C();
    *v32 = v22;
    v34 = &v32[*(v28 + 28)];
    *v34 = v33;
    *(v34 + 1) = 0x3FE999999999999ALL;
    v34[16] = 1;
    v25 = v47;
    sub_1000B4C84(v32, v47, type metadata accessor for TVWidgetNoContentTextView);
    v23 = 0;
    v24 = v28;
  }

  (*(v49 + 56))(v25, v23, 1, v24);
  v35 = v52;
  v36 = v46;
  sub_10000F8D0(v52, v46, &qword_100127590);
  v37 = v50;
  sub_10000F8D0(v25, v50, &qword_1001274E0);
  v38 = v51;
  sub_10000F8D0(v36, v51, &qword_100127590);
  v39 = sub_100006334(&qword_1001275D0);
  sub_10000F8D0(v37, v38 + *(v39 + 48), &qword_1001274E0);
  sub_10000F938(v25, &qword_1001274E0);
  sub_10000F938(v35, &qword_100127590);
  sub_10000F938(v37, &qword_1001274E0);
  return sub_10000F938(v36, &qword_100127590);
}