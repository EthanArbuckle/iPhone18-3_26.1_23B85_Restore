uint64_t sub_10003A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v65 = a3;
  v62 = a4;
  v6 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v67 = v8;
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100004D04(&qword_1000EEC50, &qword_1000C6D00);
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v58 - v12;
  v13 = sub_1000C1938();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + *(v6 + 20);
  v19 = type metadata accessor for TTRNewWidgetViewModel(0);
  v20 = v19;
  v21 = (v18 + *(v19 + 64));
  v22 = v21[1];
  v75 = a1;
  if (!v22)
  {
    v69 = 0;
LABEL_7:
    v26 = 0;
    KeyPath = 0;
    v28 = 0;
    v29 = 0;
    v64 = 0;
    v76 = 0;
    v63 = 0;
    goto LABEL_10;
  }

  if (!*(v18 + *(v19 + 68)))
  {
    v69 = 0;
    v22 = 0;
    goto LABEL_7;
  }

  v69 = *v21;
  v23 = a1 + *(v6 + 28);
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    v84[0] = *v23;
    v25 = *&v24;
  }

  else
  {

    sub_1000489F4(v24, 0);
    sub_1000C2958();
    v76 = a2;
    v30 = sub_1000C1BC8();
    a2 = v76;
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v24, 0);
    (*(v14 + 8))(v17, v13);
    v25 = *v84;
  }

  sub_100023E6C(v25);
  v26 = v31;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  LOBYTE(v78) = 0;
  v86 = 0;
  v77 = 0;
  v63 = 0;
  v76 = 0;
  v64 = 0;

  sub_1000489F4(v28, 0);

  sub_100048A00(v28, 0);

LABEL_10:
  v32 = *(v18 + *(v20 + 76));
  result = swift_beginAccess();
  v34 = *(a2 + 16);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v32 + 16) < v34)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v35 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v60 = v22;
  v74 = v26;
  v37 = 1;
  sub_10005B2F4(v32 + v36, 0, (2 * v34) | 1);
  if (*(v32 + 16) < *v65)
  {
    v37 = 2;
  }

  v84[0] = v38;
  v65 = swift_getKeyPath();
  v39 = v75;
  v75 = v28;
  v40 = v68;
  sub_100048828(v39, v68, type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView);
  v41 = *(v66 + 80);
  v59 = KeyPath;
  v42 = (v41 + 32) & ~v41;
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  *(v43 + 24) = a2;
  sub_10005BBD0(v40, v43 + v42, type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100064AF0;
  *(v44 + 24) = v43;

  sub_100004D04(&qword_1000EEC70, &qword_1000C6D68);
  v45 = v29;
  v61 = v29;
  sub_100004D04(&qword_1000EEC60, &qword_1000C6D08);
  sub_100008478(&qword_1000EEC78, &qword_1000EEC70, &qword_1000C6D68);
  sub_100008478(&qword_1000EEC58, &qword_1000EEC60, &qword_1000C6D08);
  v46 = v70;
  sub_1000C20D8();
  v47 = v72;
  v48 = *(v72 + 16);
  v49 = v71;
  v50 = v73;
  v48(v71, v46, v73);
  v51 = v69;
  *&v78 = v69;
  *(&v78 + 1) = v22;
  *&v79 = v74;
  *(&v79 + 1) = KeyPath;
  v52 = v62;
  v53 = v63;
  v80 = v63;
  *&v81 = 0;
  *(&v81 + 1) = v75;
  *&v82 = v76;
  *(&v82 + 1) = v45;
  LOBYTE(v45) = v64;
  v83 = v64;
  v62[80] = v64;
  v54 = v81;
  *(v52 + 2) = v80;
  *(v52 + 3) = v54;
  *(v52 + 4) = v82;
  v55 = v79;
  *v52 = v78;
  *(v52 + 1) = v55;
  v56 = sub_100004D04(&qword_1000EF4E8, &qword_1000C7608);
  v48(&v52[*(v56 + 48)], v49, v50);
  sub_1000082B4(&v78, v84, &qword_1000EF4F0, &qword_1000C7610);
  v57 = *(v47 + 8);
  v57(v46, v50);
  v57(v49, v50);
  v84[0] = v51;
  v84[1] = v60;
  v84[2] = v74;
  v84[3] = v59;
  v84[4] = v53;
  v84[5] = 0;
  v84[6] = 0;
  v84[7] = v75;
  v84[8] = v76;
  v84[9] = v61;
  v85 = v45;
  return sub_1000084C0(v84, &qword_1000EF4F0, &qword_1000C7610);
}

uint64_t sub_10003A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  sub_100048828(a2, &v35 - v18, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v20 = &v19[v13[11]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v19[v13[12]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v19[v13[13]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *&v19[v13[7]] = a3;
  v23 = &v19[v13[8]];
  *v23 = 0;
  v23[8] = 1;
  v19[v13[9]] = 0;
  v24 = &v19[v13[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  result = swift_beginAccess();
  v26 = *(a4 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    if (v28 <= a1)
    {
      v29 = 0;
      KeyPath = 0;
      v32 = 0;
      v33 = 2;
    }

    else
    {
      v29 = *(a5 + *(type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0) + 32));
      v30 = sub_1000C0F78();
      KeyPath = swift_getKeyPath();
      v32 = swift_getKeyPath();
      v33 = v30 & 1;
    }

    sub_100048828(v19, v16, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    sub_100048828(v16, a6, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    v34 = a6 + *(sub_100004D04(&qword_1000EEC88, &qword_1000C6D78) + 48);
    sub_10005BC38(v29, v33, KeyPath, 0);
    sub_10005BC88(v29, v33, KeyPath, 0);
    *v34 = v29;
    *(v34 + 8) = v33;
    *(v34 + 16) = KeyPath;
    *(v34 + 24) = 0;
    *(v34 + 32) = v32;
    *(v34 + 40) = 0;
    sub_100048940(v19, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    sub_10005BC88(v29, v33, KeyPath, 0);
    return sub_100048940(v16, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  }

  return result;
}

id sub_10003ABC4@<X0>(uint64_t a1@<X8>)
{
  v214 = a1;
  v2 = sub_1000C1938();
  v208 = *(v2 - 8);
  v3 = v208[8];
  __chkstk_darwin(v2);
  v207 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_100004D04(&qword_1000EE320, &qword_1000C6388);
  v5 = *(*(v212 - 8) + 64);
  __chkstk_darwin(v212);
  v213 = (&v183 - v6);
  v7 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v204 = &v183 - v9;
  v209 = sub_1000C0CB8();
  v217 = *(v209 - 8);
  v10 = *(v217 + 64);
  __chkstk_darwin(v209);
  v12 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v203 = &v183 - v14;
  v202 = sub_1000C1B58();
  v201 = *(v202 - 1);
  v15 = *(v201 + 64);
  __chkstk_darwin(v202);
  v200 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0);
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_100004D04(&qword_1000ED610, &qword_1000C6390);
  v194 = *(v195 - 8);
  v21 = *(v194 + 64);
  __chkstk_darwin(v195);
  v23 = &v183 - v22;
  v192 = sub_100004D04(&qword_1000EE328, &qword_1000C6398);
  v24 = *(*(v192 - 8) + 64);
  __chkstk_darwin(v192);
  v193 = &v183 - v25;
  v198 = sub_100004D04(&qword_1000EE330, &qword_1000C63A0);
  v26 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v196 = &v183 - v27;
  v216 = sub_100004D04(&qword_1000EE338, &qword_1000C63A8);
  v199 = *(v216 - 8);
  v28 = *(v199 + 64);
  __chkstk_darwin(v216);
  v197 = &v183 - v29;
  v30 = sub_100004D04(&qword_1000EE340, &qword_1000C63B0);
  v205 = *(v30 - 8);
  v31 = *(v205 + 64);
  __chkstk_darwin(v30);
  v215 = &v183 - v32;
  v211 = sub_100004D04(&qword_1000EE348, &qword_1000C63B8);
  v33 = *(*(v211 - 8) + 64);
  __chkstk_darwin(v211);
  v206 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v183 - v36;
  __chkstk_darwin(v38);
  v40 = &v183 - v39;
  __chkstk_darwin(v41);
  v43 = &v183 - v42;
  v44 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v45 = *(v1 + *(v44 + 32));
  v210 = v1;
  if (v45)
  {
    v186 = v30;
    v183 = v12;
    v187 = v37;
    v188 = v40;
    v190 = v43;
    v191 = v44;
    v46 = *(v1 + *(v44 + 40));
    v47 = *v1;
    v48 = v45;
    v208 = v47;
    v49 = [v47 string];
    v50 = sub_1000C2678();
    v52 = v51;

    v189 = v48;
    *&aBlock = sub_1000BB438(v48, v50, v52, v46 ^ 1u);
    *(&aBlock + 1) = v53;
    *&v224 = v54;
    sub_10001C6DC();
    LODWORD(v207) = v46;
    sub_1000C20C8();
    v55 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
    v56 = v1 + v55[6];
    v57 = *v56;
    v58 = v56[8];
    sub_1000C2108();
    v185 = v57;
    v184 = v58;
    sub_1000C1788();
    v59 = v193;
    (*(v194 + 32))(v193, v23, v195);
    v60 = (v59 + *(v192 + 36));
    v61 = v228;
    v62 = v229;
    v60[4] = v227;
    v60[5] = v61;
    v60[6] = v62;
    v63 = v224;
    *v60 = aBlock;
    v60[1] = v63;
    v64 = v226;
    v60[2] = v225;
    v60[3] = v64;
    LOBYTE(v49) = sub_1000C1C08();
    v65 = sub_1000C1C18();
    sub_1000C1C18();
    if (sub_1000C1C18() != v49)
    {
      v65 = sub_1000C1C18();
    }

    sub_1000C15A8();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v196;
    sub_10001DA60(v59, v196, &qword_1000EE328, &qword_1000C6398);
    v75 = v198;
    v76 = v74 + *(v198 + 36);
    *v76 = v65;
    *(v76 + 8) = v67;
    *(v76 + 16) = v69;
    *(v76 + 24) = v71;
    *(v76 + 32) = v73;
    *(v76 + 40) = 0;
    v77 = v210;
    v78 = *(v210 + v55[5]);
    v79 = v55[8];
    v80 = *(v210 + v55[7]);
    v81 = *(v210 + v79);
    v82 = *(v210 + v79 + 8);
    v83 = *(v210 + v79 + 16);
    sub_100048828(v210, v20, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    *&v20[v17[5]] = v78;
    v84 = &v20[v17[6]];
    *v84 = v185;
    v84[8] = v184;
    v20[v17[7]] = v80;
    v85 = &v20[v17[8]];
    *v85 = v81;
    *(v85 + 1) = v82;
    v85[16] = v83;
    v86 = &v20[v17[9]];
    *v86 = swift_getKeyPath();
    v86[8] = 0;
    v87 = &v20[v17[10]];
    *v87 = swift_getKeyPath();
    v87[8] = 0;
    v88 = &v20[v17[11]];
    *v88 = swift_getKeyPath();
    v88[8] = 0;
    v89 = &v20[v17[12]];
    *v89 = swift_getKeyPath();
    v89[8] = 0;
    v90 = v17[13];
    *&v20[v90] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v91 = sub_10004BA38();
    v92 = sub_100048784(&qword_1000EE368, type metadata accessor for TTRAnyListWidget.ReminderToggleStyle);
    v93 = v197;
    sub_1000C1E98();
    sub_100048940(v20, type metadata accessor for TTRAnyListWidget.ReminderToggleStyle);
    sub_1000084C0(v74, &qword_1000EE330, &qword_1000C63A0);
    v94 = v200;
    sub_1000C1B48();
    *&v220 = v75;
    *(&v220 + 1) = v17;
    v221 = v91;
    v222 = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v96 = v216;
    v198 = OpaqueTypeConformance2;
    sub_1000C1F28();
    (*(v201 + 8))(v94, v202);
    (*(v199 + 8))(v93, v96);
    sub_100004D04(&qword_1000EE378, &qword_1000C6420);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1000C5A40;
    v98 = [v208 string];
    v99 = sub_1000C2678();
    v101 = v100;

    *(v97 + 32) = v99;
    *(v97 + 40) = v101;
    v102 = v217;
    v103 = *(v217 + 104);
    v104 = &enum case for TTRAccesibility.RemindersList.Attribute.completed(_:);
    if (!v207)
    {
      v104 = &enum case for TTRAccesibility.RemindersList.Attribute.incomplete(_:);
    }

    v105 = *v104;
    v106 = v203;
    v107 = v209;
    v202 = *(v217 + 104);
    v103(v203, v105, v209);
    v108 = sub_1000C0CA8();
    v110 = v109;
    v111 = *(v102 + 8);
    v217 = v102 + 8;
    v111(v106, v107);
    *(v97 + 48) = v108;
    *(v97 + 56) = v110;
    v112 = v191;
    v113 = v204;
    sub_1000082B4(v77 + *(v191 + 24), v204, &qword_1000ECE78, &unk_1000C3810);
    v114 = sub_1000C0818();
    v115 = *(v114 - 8);
    if ((*(v115 + 48))(v113, 1, v114) == 1)
    {
      sub_1000084C0(v113, &qword_1000ECE78, &unk_1000C3810);
      v116 = *(v77 + *(v112 + 36));
      if (v116 < 1)
      {
        v118 = 0;
        v120 = 0;
      }

      else
      {
        v117 = sub_100012888(v116);
        v112 = v191;
        v118 = v117;
        v120 = v119;
      }
    }

    else
    {
      v118 = sub_1000C07F8();
      v120 = v161;
      (*(v115 + 8))(v113, v114);
    }

    *(v97 + 64) = v118;
    *(v97 + 72) = v120;
    if (*(v77 + *(v112 + 44)) == 1)
    {
      v162 = v183;
      v163 = v209;
      (v202)(v183, enum case for TTRAccesibility.RemindersList.Attribute.recurring(_:), v209);
      v164 = sub_1000C0CA8();
      v166 = v165;
      v111(v162, v163);
    }

    else
    {
      v164 = 0;
      v166 = 0;
    }

    v167 = v186;
    *(v97 + 80) = v164;
    *(v97 + 88) = v166;
    *&v220 = v97;
    sub_100004D04(&qword_1000EE380, &qword_1000C6428);
    sub_100008478(&qword_1000EE388, &qword_1000EE380, &qword_1000C6428);
    v168 = sub_1000C2738();

    *&v220 = v168;
    sub_1000C0CD8();
    sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
    sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430);
    v169 = sub_1000C25B8();
    v171 = v170;

    *&v220 = v169;
    *(&v220 + 1) = v171;
    v218 = v216;
    v219 = v198;
    swift_getOpaqueTypeConformance2();
    sub_100012814();
    v172 = v206;
    v173 = v215;
    sub_1000C1F08();

    (*(v205 + 8))(v173, v167);
    sub_1000C19E8();
    v174 = v187;
    sub_1000C1718();

    sub_1000084C0(v172, &qword_1000EE348, &qword_1000C63B8);
    *&v220 = sub_1000C0C98();
    *(&v220 + 1) = v175;
    v176 = v188;
    sub_1000C1708();

    sub_1000084C0(v174, &qword_1000EE348, &qword_1000C63B8);
    sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_1000C3590;
    v178 = [v208 string];
    v179 = sub_1000C2678();
    v181 = v180;

    *(v177 + 32) = v179;
    *(v177 + 40) = v181;
    v182 = v190;
    sub_1000C1728();

    sub_1000084C0(v176, &qword_1000EE348, &qword_1000C63B8);
    sub_1000082B4(v182, v213, &qword_1000EE348, &qword_1000C63B8);
    swift_storeEnumTagMultiPayload();
    sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
    sub_10004B8AC();
    sub_10001C624();
    sub_1000C1AE8();

    return sub_1000084C0(v182, &qword_1000EE348, &qword_1000C63B8);
  }

  v121 = *v1;
  v122 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v123 = v1 + *(v122 + 40);
  v124 = *v123;
  v125 = v123[8];

  v126 = v208;
  v127 = v207;
  if ((v125 & 1) == 0)
  {
    sub_1000C2958();
    v128 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (v126[1])(v127, v2);
    v124 = aBlock;
  }

  v217 = v122;
  v129 = v1 + *(v122 + 44);
  v130 = *v129;
  v131 = v129[8];

  if ((v131 & 1) == 0)
  {
    sub_1000C2958();
    v132 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (v126[1])(v127, v2);
    v130 = aBlock;
  }

  v216 = v2;
  result = [v121 string];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v134 = result;
  v220 = xmmword_1000C35A0;
  LOBYTE(v221) = 0;
  v222 = _swiftEmptyArrayStorage;
  v135 = [objc_opt_self() attributeName];
  v136 = [v121 length];
  v137 = swift_allocObject();
  v137[2] = &v220;
  v137[3] = v134;
  v137[4] = v124;
  v137[5] = v130;
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1000083E4;
  *(v138 + 24) = v137;
  *&v225 = sub_10004B86C;
  *(&v225 + 1) = v138;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v224 = sub_100045698;
  *(&v224 + 1) = &unk_1000E8560;
  v139 = v121;
  v140 = _Block_copy(&aBlock);

  v141 = v134;

  [v139 enumerateAttribute:v135 inRange:0 options:v136 usingBlock:{0, v140}];

  _Block_release(v140);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v143 = v220;
  v144 = v221;

  v145 = v210;
  v146 = v210 + *(v217 + 36);
  v147 = *v146;
  v148 = v146[8];

  if ((v148 & 1) == 0)
  {
    sub_1000C2958();
    v149 = sub_1000C1BC8();
    sub_1000C1548();

    v150 = v207;
    sub_1000C1928();
    swift_getAtKeyPath();

    (v208[1])(v150, v216);
  }

  v151 = sub_1000C1DA8();
  v153 = v152;
  v155 = v154;
  v157 = v156;

  sub_10000537C(v143, *(&v143 + 1), v144);

  v158 = *(v145 + *(v217 + 20));
  KeyPath = swift_getKeyPath();
  v160 = v213;
  *v213 = v151;
  v160[1] = v153;
  *(v160 + 16) = v155 & 1;
  v160[3] = v157;
  v160[4] = KeyPath;
  v160[5] = v158;
  *(v160 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
  sub_10004B8AC();
  sub_10001C624();
  return sub_1000C1AE8();
}

unint64_t sub_10003C298()
{
  result = qword_1000EDD78;
  if (!qword_1000EDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDD78);
  }

  return result;
}

void sub_10003C330(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, double *a6, void (**a7)(char *), CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v56 = a7;
  v57 = a5;
  v59 = a6;
  v60 = a1;
  v61 = a2;
  v17 = sub_1000C1648();
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004D04(&qword_1000EF5C8, &qword_1000C76B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v58 = &v52 - v23;
  v24 = sub_1000C1668();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100004D04(&qword_1000EF5D0, &qword_1000C76B8);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v52 - v31;
  v33 = sub_100004D04(&qword_1000EF5D8, &qword_1000C76C0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v52 - v35;
  v37 = 0.0;
  if ((a4 & 1) != 0 || *&a3 == INFINITY)
  {
    v38 = v59;
  }

  else
  {
    v38 = v59;
    v51 = v59[1];
    if (v51 < *&a3)
    {
      if (__OFSUB__(v56, 1))
      {
        goto LABEL_16;
      }

      v37 = (*&a3 - v51) / ((v56 - 1) + (v56 - 1));
    }
  }

  LOBYTE(v62[0]) = v61 & 1;
  v63 = a4 & 1;
  v39 = a3;
  v40 = v57;
  v41 = sub_100065040(v60, v61 & 1, v39, a4 & 1, v57, v38, v37);
  v64.origin.x = a8;
  v64.origin.y = a9;
  v64.size.width = a10;
  v64.size.height = a11;
  MinY = CGRectGetMinY(v64);
  (*(v25 + 16))(v32, v40, v24);
  (*(v25 + 32))(v28, v32, v24);
  sub_100048784(&qword_1000EF5E0, &type metadata accessor for LayoutSubviews);
  sub_1000C2728();
  v52 = v33;
  v43 = &v36[*(v33 + 52)];
  v59 = v41;
  *v43 = v41;
  *(v43 + 1) = 0;
  v57 = v43;
  v44 = *(sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8) + 36);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews);
  sub_1000C28D8();
  if (*&v36[v44] == v62[0])
  {
LABEL_11:
    v36[*(v52 + 56)] = 1;
    sub_1000084C0(v36, &qword_1000EF5D8, &qword_1000C76C0);
    return;
  }

  v45 = 0;
  v56 = (v55 + 16);
  v54 = v59 + 4;
  v53 = (v55 + 32);
  v55 += 8;
  while (1)
  {
    v46 = sub_1000C28F8();
    (*v56)(v20);
    v46(v62, 0);
    v47 = v24;
    sub_1000C28E8();
    v48 = *(v59 + 2);
    if (v45 == v48)
    {
      (*v55)(v20, v17);
      goto LABEL_11;
    }

    if (v45 >= v48)
    {
      break;
    }

    v49 = *&v54[v45];
    v50 = v58;
    v57[1] = v45 + 1;
    (*v53)(v50, v20, v17);
    v65.origin.x = a8;
    v65.origin.y = a9;
    v65.size.width = a10;
    v65.size.height = a11;
    CGRectGetMinX(v65);
    sub_1000C2148();
    LOBYTE(v62[0]) = v61 & 1;
    v63 = 0;
    sub_1000C1638();
    (*v55)(v50, v17);
    MinY = MinY + v37 + v49;
    v24 = v47;
    sub_1000C28D8();
    ++v45;
    if (*&v36[v44] == v62[0])
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_10003C910(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = sub_1000C1648();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v25 = &v23 - v6;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_1000C1668();
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews);
  sub_1000C2898();
  sub_1000C28D8();
  v26 = v10;
  v11 = sub_1000C28C8();
  v12 = 0.0;
  if (v11 >= 1)
  {
    v13 = v11;
    v14 = 0;
    v15 = (v28 + 8);
    do
    {
      if (__OFADD__(v14, 2))
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14 + 2;
      }

      sub_1000C1678();
      v30 = 0;
      v29 = 1;
      sub_1000C1628();
      v18 = v17;
      (*v15)(v9, v2);
      if (v12 < v18)
      {
        v12 = v18;
      }

      v14 = v16;
    }

    while (v16 < v13);
  }

  sub_1000C2898();
  sub_1000C28D8();
  if (sub_1000C28C8() > 1)
  {
    v19 = v24;
    sub_1000C1678();
    v20 = v28;
    v21 = v25;
    (*(v28 + 32))(v25, v19, v2);
    v30 = 0;
    v29 = 1;
    sub_1000C1628();
    (*(v20 + 8))(v21, v2);
  }

  return v12;
}

uint64_t (*sub_10003CD20(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C1588();
  return sub_10003CDA8;
}

void sub_10003CDB0(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, double *a6, uint64_t *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v57 = a7;
  v65 = a6;
  v59 = a5;
  v64 = a2;
  v63 = a1;
  v61 = a10;
  v62 = a11;
  v60 = a9;
  v14 = sub_1000C1648();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004D04(&qword_1000EF5C8, &qword_1000C76B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v58 = &v52 - v20;
  v21 = sub_1000C1668();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004D04(&qword_1000EF5D0, &qword_1000C76B8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v52 - v28;
  v30 = sub_100004D04(&qword_1000EF5D8, &qword_1000C76C0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v52 - v32;
  v34 = 0.0;
  if ((a4 & 1) == 0 && *&a3 != INFINITY)
  {
    v35 = v65[1];
    if (v35 < *&a3)
    {
      if (__OFSUB__(v57, 1))
      {
        goto LABEL_15;
      }

      v34 = (*&a3 - v35) / (v57 - 1);
    }
  }

  LOBYTE(v66[0]) = v64 & 1;
  v67 = a4 & 1;
  v36 = a3;
  v37 = v59;
  v38 = sub_1000670E4(v63, v64 & 1, v36, a4 & 1, v59, v34);
  v68.origin.x = a8;
  v68.origin.y = v60;
  v68.size.width = v61;
  v68.size.height = v62;
  MinY = CGRectGetMinY(v68);
  (*(v22 + 16))(v29, v37, v21);
  (*(v22 + 32))(v25, v29, v21);
  sub_100048784(&qword_1000EF5E0, &type metadata accessor for LayoutSubviews);
  sub_1000C2728();
  v53 = v30;
  v40 = &v33[*(v30 + 52)];
  v59 = v38;
  *v40 = v38;
  v40[1] = 0;
  v57 = v40;
  v41 = *(sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8) + 36);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews);
  sub_1000C28D8();
  if (*&v33[v41] == v66[0])
  {
LABEL_13:
    v33[*(v53 + 56)] = 1;
    sub_1000084C0(v33, &qword_1000EF5D8, &qword_1000C76C0);
    return;
  }

  v42 = 0;
  v56 = (v52 + 16);
  v55 = v59 + 32;
  v54 = (v52 + 32);
  v43 = (v52 + 8);
  while (1)
  {
    v44 = sub_1000C28F8();
    (*v56)(v17);
    v44(v66, 0);
    sub_1000C28E8();
    v45 = *(v59 + 16);
    if (v42 == v45)
    {
      (*v43)(v17, v14);
      goto LABEL_13;
    }

    if (v42 >= v45)
    {
      break;
    }

    v46 = v21;
    v47 = v17;
    v48 = v42 + 1;
    v49 = *(v55 + 8 * v42);
    v57[1] = v42 + 1;
    v50 = v58;
    (*v54)(v58, v47, v14);
    v51 = (*v65 - v49) * 0.5;
    v69.origin.x = a8;
    v69.origin.y = v60;
    v69.size.width = v61;
    v69.size.height = v62;
    CGRectGetMinX(v69);
    sub_1000C2148();
    LOBYTE(v66[0]) = v64 & 1;
    v67 = 0;
    sub_1000C1638();
    (*v43)(v50, v14);
    MinY = MinY + v34 + v49 + v51;
    sub_1000C28D8();
    v42 = v48;
    v17 = v47;
    v21 = v46;
    if (*&v33[v41] == v66[0])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

double sub_10003D3C8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_1000C1648();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_1000C1668();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v14 = *(v9 + 44);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews);
  sub_1000C2898();
  sub_1000C28D8();
  v15 = 0.0;
  if (*&v12[v14] != v24[0])
  {
    v16 = (v4 + 16);
    v17 = (v4 + 8);
    do
    {
      v18 = sub_1000C28F8();
      (*v16)(v7);
      v18(v24, 0);
      sub_1000C28E8();
      LOBYTE(v24[0]) = 0;
      v23 = 1;
      sub_1000C1628();
      v20 = v19;
      (*v17)(v7, v3);
      if (v15 < v20)
      {
        v15 = v20;
      }

      sub_1000C28D8();
    }

    while (*&v12[v14] != v24[0]);
  }

  sub_1000084C0(v12, &qword_1000EF5E8, &qword_1000C76C8);
  return v15;
}

double sub_10003D694(double a1, uint64_t a2, double *a3)
{
  v4 = a1;
  v5 = *a3 + a1;
  sub_1000C1628();
  if (v6 - v4 <= *a3)
  {
    *a3 = *a3 - (v6 - v4);
    return v6;
  }

  return v4;
}

double sub_10003D73C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = *(a6 + 8);
  }

  else if (*(a6 + 8) > *&a3)
  {
    v7 = *(a6 + 8);
  }

  result = *&a1;
  if (a2)
  {
    return INFINITY;
  }

  return result;
}

uint64_t (*sub_10003D818(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C1588();
  return sub_10006895C;
}

void sub_10003D8A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10003D8E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v41 = a1;
  v4 = sub_1000C0938();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v42 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100004D04(&qword_1000EE580, &qword_1000C6628);
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v45 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v39[-v12];
  v14 = type metadata accessor for TTRAnyListWidget.CompletedView(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v39[-v20];
  v40 = sub_1000C1B18();
  v22 = a1 + *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  *(v21 + 3) = swift_getKeyPath();
  v21[32] = 0;
  v26 = v15[11];
  *&v21[v26] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  swift_storeEnumTagMultiPayload();
  v27 = &v21[v15[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v15[13];
  *&v21[v28] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v21 = v40 & 1;
  v21[1] = v25 ^ 1;
  v29 = 0.0;
  if (v25)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v23;
  }

  if (!v25)
  {
    v29 = v24;
  }

  *(v21 + 1) = v30;
  *(v21 + 2) = v29;
  v31 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v32 = v41;
  (*(v43 + 16))(v42, v41 + *(v31 + 28), v44);
  v48 = v32;
  v49 = v46;
  sub_100004D04(&qword_1000EE588, &qword_1000C6658);
  sub_100050788();
  sub_1000C1CE8();
  sub_100048828(v21, v18, type metadata accessor for TTRAnyListWidget.CompletedView);
  v33 = v8[2];
  v34 = v45;
  v33(v45, v13, v7);
  v35 = v47;
  sub_100048828(v18, v47, type metadata accessor for TTRAnyListWidget.CompletedView);
  v36 = sub_100004D04(&qword_1000EE5B8, &qword_1000C6670);
  v33((v35 + *(v36 + 48)), v34, v7);
  v37 = v8[1];
  v37(v13, v7);
  sub_100048940(v21, type metadata accessor for TTRAnyListWidget.CompletedView);
  v37(v34, v7);
  return sub_100048940(v18, type metadata accessor for TTRAnyListWidget.CompletedView);
}

uint64_t sub_10003DD10@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004D04(&qword_1000EE5B0, &qword_1000C6668);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v32 - v8;
  v10 = sub_100004D04(&qword_1000EE5A0, &qword_1000C6660);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  *v9 = sub_1000C1968();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = sub_100004D04(&qword_1000EE5C0, &qword_1000C6678);
  sub_10003DFDC(a1, a2, &v9[*(v14 + 44)]);
  v15 = a1 + *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 24);
  v16 = *v15;
  LOBYTE(a2) = v15[8];
  sub_1000C2108();
  sub_1000C1788();
  sub_10001DA60(v9, v13, &qword_1000EE5B0, &qword_1000C6668);
  v17 = &v13[*(v10 + 36)];
  v18 = v32[5];
  *(v17 + 4) = v32[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v32[6];
  v19 = v32[1];
  *v17 = v32[0];
  *(v17 + 1) = v19;
  v20 = v32[3];
  *(v17 + 2) = v32[2];
  *(v17 + 3) = v20;
  LOBYTE(v10) = sub_1000C1BF8();
  v21 = sub_1000C1C18();
  sub_1000C1C18();
  if (sub_1000C1C18() != v10)
  {
    v21 = sub_1000C1C18();
  }

  sub_1000C15A8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10001DA60(v13, a3, &qword_1000EE5A0, &qword_1000C6660);
  result = sub_100004D04(&qword_1000EE588, &qword_1000C6658);
  v31 = a3 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

id sub_10003DFDC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v196 = a2;
  v198 = a3;
  v4 = sub_1000C0818();
  v192 = *(v4 - 8);
  v5 = *(v192 + 64);
  __chkstk_darwin(v4);
  v172 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v173 = &v170 - v8;
  v9 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v174 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v176 = &v170 - v13;
  v14 = sub_100004D04(&qword_1000EE5C8, &qword_1000C6680);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v191 = (&v170 - v16);
  v183 = sub_100004D04(&qword_1000EE5D0, &qword_1000C6688);
  v17 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v187 = &v170 - v18;
  v190 = sub_100004D04(&qword_1000EE5D8, &qword_1000C6690);
  v19 = *(*(v190 - 8) + 64);
  __chkstk_darwin(v190);
  v185 = &v170 - v20;
  v182 = sub_100004D04(&qword_1000EE5E0, &qword_1000C6698);
  v21 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v184 = (&v170 - v22);
  v186 = sub_100004D04(&qword_1000EE5E8, &qword_1000C66A0);
  v23 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v170 = (&v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v171 = &v170 - v26;
  __chkstk_darwin(v27);
  v181 = &v170 - v28;
  __chkstk_darwin(v29);
  v177 = (&v170 - v30);
  __chkstk_darwin(v31);
  v178 = &v170 - v32;
  v33 = sub_100004D04(&qword_1000EE5F0, &qword_1000C66A8);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v197 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v202 = &v170 - v37;
  v38 = sub_1000C1938();
  v201 = *(v38 - 8);
  v39 = *(v201 + 64);
  __chkstk_darwin(v38);
  v200 = &v170 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  v42 = type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0);
  v43 = a1 + *(v42 + 44);
  v44 = *v43;
  v45 = v43[8];

  if ((v45 & 1) == 0)
  {
    sub_1000C2958();
    v46 = sub_1000C1BC8();
    sub_1000C1548();

    v47 = v200;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v201 + 8))(v47, v38);
    v44 = aBlock[0];
  }

  v203 = v42;
  v48 = a1 + *(v42 + 48);
  v49 = *v48;
  v50 = v48[8];

  if ((v50 & 1) == 0)
  {
    sub_1000C2958();
    v51 = sub_1000C1BC8();
    sub_1000C1548();

    v52 = v200;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v201 + 8))(v52, v38);
    v49 = aBlock[0];
  }

  v175 = v38;
  v188 = v4;
  v199 = a1;
  v189 = v14;
  result = [v41 string];
  if (result)
  {
    v54 = result;
    v205 = xmmword_1000C35A0;
    v206 = 0;
    v207 = _swiftEmptyArrayStorage;
    v55 = [objc_opt_self() attributeName];
    v56 = [v41 length];
    v57 = swift_allocObject();
    v57[2] = &v205;
    v57[3] = v54;
    v57[4] = v44;
    v57[5] = v49;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_100008748;
    *(v58 + 24) = v57;
    aBlock[4] = sub_100068908;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100045698;
    aBlock[3] = &unk_1000E86A8;
    v59 = _Block_copy(aBlock);
    v60 = v54;

    [v41 enumerateAttribute:v55 inRange:0 options:v56 usingBlock:{0, v59}];

    _Block_release(v59);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if ((v60 & 1) == 0)
    {
      v61 = v205;
      v62 = v206;

      v63 = v199;
      sub_10003F4BC();
      v64 = sub_1000C1DA8();
      v66 = v65;
      v68 = v67;

      sub_10000537C(v61, *(&v61 + 1), v62);

      v196 = sub_1000C1D78();
      v195 = v69;
      v194 = v70;
      v72 = v71;
      v73 = v63;
      sub_10000537C(v64, v66, v68 & 1);

      v74 = v203;
      v75 = *(v63 + v203[5]);
      KeyPath = swift_getKeyPath();
      v77 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
      v78 = *(v63 + *(v77 + 44)) == 1;
      v193 = v75;
      if (v78)
      {
        v79 = sub_1000C2018();
        v80 = v63 + v74[9];
        v81 = *v80;
        v82 = *(v80 + 8);

        if ((v82 & 1) == 0)
        {
          sub_1000C2958();
          v83 = v72;
          v84 = sub_1000C1BC8();
          sub_1000C1548();

          v72 = v83;
          v85 = v200;
          sub_1000C1928();
          swift_getAtKeyPath();

          (*(v201 + 8))(v85, v175);
          v81 = aBlock[0];
        }

        v86 = v187;
        v87 = v186;
        v88 = swift_getKeyPath();
        v89 = v63 + v203[13];
        v90 = sub_1000451A0();
        v180 = v72;
        v179 = KeyPath;
        if (v90)
        {
          v91 = sub_1000C1FC8();
        }

        else
        {
          v91 = sub_1000C1FD8();
        }

        v116 = v91;
        v117 = swift_getKeyPath();
        v118 = v177;
        v119 = (v177 + *(v87 + 36));
        v120 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
        v121 = enum case for Image.Scale.small(_:);
        v122 = sub_1000C2048();
        (*(*(v122 - 8) + 104))(v119 + v120, v121, v122);
        *v119 = swift_getKeyPath();
        *v118 = v79;
        v118[1] = v88;
        v118[2] = v81;
        v118[3] = v117;
        v118[4] = v116;
        v123 = v178;
        sub_10001DA60(v118, v178, &qword_1000EE5E8, &qword_1000C66A0);
        v124 = v181;
        sub_1000082B4(v123, v181, &qword_1000EE5E8, &qword_1000C66A0);
        v125 = v184;
        *v184 = 0;
        *(v125 + 8) = 1;
        v126 = sub_100004D04(&qword_1000EE628, &qword_1000C6700);
        sub_1000082B4(v124, v125 + *(v126 + 48), &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000084C0(v124, &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000082B4(v125, v86, &qword_1000EE5E0, &qword_1000C6698);
      }

      else
      {
        v92 = v72;
        v93 = v176;
        sub_1000082B4(v73 + *(v77 + 24), v176, &qword_1000ECE78, &unk_1000C3810);
        v94 = *(v192 + 48);
        v95 = v188;
        v96 = v94(v93, 1, v188);
        sub_1000084C0(v93, &qword_1000ECE78, &unk_1000C3810);
        v78 = v96 == 1;
        v97 = v202;
        if (v78 || *(v73 + v203[7]) != 1)
        {
          v110 = v174;
          sub_10003F68C(v174);
          if (v94(v110, 1, v95) == 1)
          {
            sub_1000084C0(v110, &qword_1000ECE78, &unk_1000C3810);
            v111 = 1;
            v112 = v196;
            v113 = v195;
            v114 = v193;
            v115 = v97;
LABEL_31:
            v155 = sub_100004D04(&qword_1000EE5F8, &qword_1000C66B0);
            (*(*(v155 - 8) + 56))(v115, v111, 1, v155);
            v156 = v115;
            v157 = v197;
            sub_1000082B4(v156, v197, &qword_1000EE5F0, &qword_1000C66A8);
            v158 = v198;
            *v198 = v112;
            v158[1] = v113;
            v159 = v194 & 1;
            *(v158 + 16) = v194 & 1;
            v158[3] = v92;
            v158[4] = KeyPath;
            v158[5] = v114;
            *(v158 + 48) = 0;
            v158[7] = 0;
            *(v158 + 64) = 0;
            v160 = sub_100004D04(&qword_1000EE600, &qword_1000C66B8);
            sub_1000082B4(v157, v158 + *(v160 + 64), &qword_1000EE5F0, &qword_1000C66A8);
            sub_100008420(v112, v113, v159);

            sub_1000084C0(v202, &qword_1000EE5F0, &qword_1000C66A8);
            sub_1000084C0(v157, &qword_1000EE5F0, &qword_1000C66A8);
            sub_10000537C(v112, v113, v159);
          }

          v179 = KeyPath;
          v180 = v92;
          v128 = v192;
          v129 = v173;
          (*(v192 + 32))(v173, v110, v95);
          (*(v128 + 16))(v172, v129, v95);
          v130 = sub_1000C1DC8();
          v132 = v131;
          v134 = v133;
          v135 = (v73 + v203[9]);
          v136 = *v135;
          v137 = *(v135 + 8);

          if ((v137 & 1) == 0)
          {
            sub_1000C2958();
            v138 = sub_1000C1BC8();
            sub_1000C1548();

            v139 = v200;
            sub_1000C1928();
            swift_getAtKeyPath();

            (*(v201 + 8))(v139, v175);
          }

          v140 = sub_1000C1DA8();
          v142 = v141;
          v144 = v143;

          sub_10000537C(v130, v132, v134 & 1);

          v145 = v199 + v203[13];
          if (sub_1000451A0())
          {
            sub_1000C1FC8();
          }

          else
          {
            sub_1000C1FD8();
          }

          v146 = sub_1000C1D78();
          v148 = v147;
          v150 = v149;
          v152 = v151;

          sub_10000537C(v140, v142, v144 & 1);

          v153 = v150 & 1;
          sub_100008420(v146, v148, v150 & 1);

          sub_100008420(v146, v148, v150 & 1);

          sub_10000537C(v146, v148, v150 & 1);

          v154 = v191;
          *v191 = 0;
          *(v154 + 8) = 1;
          v154[2] = v146;
          v154[3] = v148;
          *(v154 + 32) = v150 & 1;
          v154[5] = v152;
          swift_storeEnumTagMultiPayload();
          sub_100004D04(&qword_1000EE608, &unk_1000C66C0);
          sub_1000508DC();
          sub_100008478(&qword_1000EE620, &qword_1000EE608, &unk_1000C66C0);
          v115 = v202;
          sub_1000C1AE8();
          sub_10000537C(v146, v148, v153);

          (*(v192 + 8))(v173, v188);
LABEL_30:
          v111 = 0;
          v92 = v180;
          v112 = v196;
          v113 = v195;
          KeyPath = v179;
          v114 = v193;
          goto LABEL_31;
        }

        v98 = sub_1000C2018();
        v99 = v73 + v203[9];
        v100 = *v99;
        v101 = *(v99 + 8);

        if ((v101 & 1) == 0)
        {
          sub_1000C2958();
          v102 = sub_1000C1BC8();
          sub_1000C1548();

          v103 = v200;
          sub_1000C1928();
          swift_getAtKeyPath();

          (*(v201 + 8))(v103, v175);
          v100 = aBlock[0];
        }

        v104 = v187;
        v105 = v186;
        v106 = swift_getKeyPath();
        v107 = v73 + v203[13];
        v108 = sub_1000451A0();
        v180 = v92;
        v179 = KeyPath;
        if (v108)
        {
          v109 = sub_1000C1FC8();
        }

        else
        {
          v109 = sub_1000C1FD8();
        }

        v161 = v109;
        v162 = swift_getKeyPath();
        v163 = v170;
        v164 = (v170 + *(v105 + 36));
        v165 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
        v166 = enum case for Image.Scale.medium(_:);
        v167 = sub_1000C2048();
        (*(*(v167 - 8) + 104))(v164 + v165, v166, v167);
        *v164 = swift_getKeyPath();
        *v163 = v98;
        v163[1] = v106;
        v163[2] = v100;
        v163[3] = v162;
        v163[4] = v161;
        v123 = v171;
        sub_10001DA60(v163, v171, &qword_1000EE5E8, &qword_1000C66A0);
        v168 = v181;
        sub_1000082B4(v123, v181, &qword_1000EE5E8, &qword_1000C66A0);
        v125 = v184;
        *v184 = 0;
        *(v125 + 8) = 1;
        v169 = sub_100004D04(&qword_1000EE628, &qword_1000C6700);
        sub_1000082B4(v168, v125 + *(v169 + 48), &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000084C0(v168, &qword_1000EE5E8, &qword_1000C66A0);
        sub_1000082B4(v125, v104, &qword_1000EE5E0, &qword_1000C6698);
      }

      swift_storeEnumTagMultiPayload();
      sub_100008478(&qword_1000EE618, &qword_1000EE5E0, &qword_1000C6698);
      v127 = v185;
      sub_1000C1AE8();
      sub_1000082B4(v127, v191, &qword_1000EE5D8, &qword_1000C6690);
      swift_storeEnumTagMultiPayload();
      sub_100004D04(&qword_1000EE608, &unk_1000C66C0);
      sub_1000508DC();
      sub_100008478(&qword_1000EE620, &qword_1000EE608, &unk_1000C66C0);
      v115 = v202;
      sub_1000C1AE8();
      sub_1000084C0(v127, &qword_1000EE5D8, &qword_1000C6690);
      sub_1000084C0(v125, &qword_1000EE5E0, &qword_1000C6698);
      sub_1000084C0(v123, &qword_1000EE5E8, &qword_1000C66A0);
      goto LABEL_30;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003F4BC()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 36));
  if (v6 < 1)
  {
    v9 = *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 36);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [objc_allocWithZone(NSNumber) initWithInteger:v6];

    v9 = *(type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0) + 40);
  }

  v10 = (v0 + v9);
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    sub_1000C2958();
    v13 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v15[1];
  }

  return v11;
}

uint64_t sub_10003F68C@<X0>(char *a1@<X8>)
{
  v3 = sub_1000C0858();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(v1 + *(v14 + 24), v8, &qword_1000ECE78, &unk_1000C3810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000084C0(v8, &qword_1000ECE78, &unk_1000C3810);
    v15 = *(v1 + *(v14 + 36));
    if (v15 < 1)
    {
      v20 = 1;
      return (*(v10 + 56))(a1, v20, 1, v9);
    }

    v16 = objc_opt_self();
    v17 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
    v18 = [v16 localizedStringFromNumber:v17 numberStyle:1];

    sub_1000C2678();
    sub_1000C0848();
    sub_1000C0828();
  }

  else
  {
    v19 = *(v10 + 32);
    v19(v13, v8, v9);
    v19(a1, v13, v9);
  }

  v20 = 0;
  return (*(v10 + 56))(a1, v20, 1, v9);
}

uint64_t sub_10003F960@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_1000C1B18();
  v7 = v2 + *(a1 + 52);
  if ((sub_1000451A0() & 1) != 0 || (v6 & 1) == 0)
  {
    v8 = sub_1000C1FC8();
  }

  else
  {
    v8 = sub_1000C1FD8();
  }

  v9 = v8;
  *a2 = sub_1000C1998();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v10 = sub_100004D04(&qword_1000EE578, &qword_1000C6620);
  sub_10003D8E8(v4, v9, a2 + *(v10 + 44));
}

uint64_t sub_10003FA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v77 = sub_1000C16C8();
  v75 = *(v77 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C2338();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000C1938();
  v61 = *(v63 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v63);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100004D04(&qword_1000EEE70, &qword_1000C6F08);
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v62);
  v15 = &v59 - v14;
  v60 = sub_100004D04(&qword_1000EEE78, &qword_1000C6F10);
  v16 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v78 = &v59 - v17;
  v68 = sub_100004D04(&qword_1000EEE80, &qword_1000C6F18);
  v18 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v67 = &v59 - v19;
  v73 = sub_100004D04(&qword_1000EEE88, &qword_1000C6F20);
  v71 = *(v73 - 8);
  v20 = *(v71 + 64);
  __chkstk_darwin(v73);
  v69 = &v59 - v21;
  v70 = sub_100004D04(&qword_1000EEE90, &qword_1000C6F28);
  v22 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v72 = &v59 - v23;
  v66 = *v1;
  v24 = sub_1000C2018();
  v79 = v1;
  v80 = v24;
  v25 = v1[1];
  sub_100004D04(&qword_1000EEE98, &qword_1000C6F30);
  sub_10005C7C8();
  sub_1000C1E08();

  v26 = type metadata accessor for TTRAnyListWidget.CompletedView(0);
  v27 = &v1[v26[10]];
  v28 = *v27;
  v29 = v27[8];

  v59 = v11;
  if (v29)
  {
    v30 = v63;
    v31 = v61;
  }

  else
  {
    sub_1000C2958();
    v32 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    v31 = v61;
    v33 = v11;
    v30 = v63;
    (*(v61 + 8))(v33, v63);
    v28 = v80;
  }

  KeyPath = swift_getKeyPath();
  v35 = v78;
  (*(v12 + 32))(v78, v15, v62);
  v36 = (v35 + *(v60 + 36));
  *v36 = KeyPath;
  v36[1] = v28;
  v37 = &v2[v26[11]];
  v38 = sub_1000451A0();
  v39 = &v2[v26[9]];
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v8);
  LOBYTE(v39) = sub_10002E38C();
  (*(v64 + 8))(v8, v65);
  if ((v39 & 1) != 0 || (v38 & 1) == 0)
  {
    if (v66)
    {
      v40 = *(v2 + 3);
      v41 = v2[32];

      if ((v41 & 1) == 0)
      {
        sub_1000C2958();
        v42 = sub_1000C1BC8();
        sub_1000C1548();

        v43 = v59;
        sub_1000C1928();
        swift_getAtKeyPath();
        j__swift_release();
        (*(v31 + 8))(v43, v30);
        v40 = v80;
      }
    }

    else
    {
      if (qword_1000EC978 != -1)
      {
        swift_once();
      }

      v40 = qword_1000FAB00;
    }
  }

  else
  {
    v40 = sub_1000C1FD8();
  }

  v44 = swift_getKeyPath();
  v45 = v67;
  sub_10001DA60(v78, v67, &qword_1000EEE78, &qword_1000C6F10);
  v46 = v68;
  v47 = (v45 + *(v68 + 36));
  *v47 = v44;
  v47[1] = v40;
  sub_100004D04(&qword_1000EEEB8, &qword_1000C6F40);
  v48 = sub_10005C8E4();
  v80 = v46;
  v81 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v69;
  sub_1000C1E08();
  sub_1000084C0(v45, &qword_1000EEE80, &qword_1000C6F18);
  v50 = v72;
  v51 = &v72[*(v70 + 36)];
  v52 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
  v53 = enum case for Image.Scale.large(_:);
  v54 = sub_1000C2048();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  (*(v71 + 32))(v50, v49, v73);
  v56 = v74;
  v55 = v75;
  v57 = v77;
  (*(v75 + 104))(v74, enum case for DynamicTypeSize.large(_:), v77);
  sub_10005CAA4();
  sub_1000C1ED8();
  (*(v55 + 8))(v56, v57);
  return sub_1000084C0(v50, &qword_1000EEE90, &qword_1000C6F28);
}

double sub_100040310@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C2028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v7 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v6, v9);
  v13 = sub_1000C2068();
  (*(v7 + 8))(v11, v6);
  v15 = *(a2 + 8);
  v14 = *(a2 + 16);
  sub_1000C2108();
  sub_1000C1608();
  *a3 = v13;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v16 = v18[1];
  *(a3 + 24) = v18[0];
  *(a3 + 40) = v16;
  result = *&v19;
  *(a3 + 56) = v19;
  return result;
}

uint64_t sub_100040474()
{
  sub_100004D04(&qword_1000EEE80, &qword_1000C6F18);
  sub_10005C8E4();
  return sub_1000C1E18();
}

double sub_1000404F4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C1A38();
  sub_100040650(v2, v15);
  *&v6[7] = v15[0];
  *&v6[23] = v15[1];
  *&v6[39] = v16[0];
  *&v6[48] = *(v16 + 9);
  if (*v2 >= 2u)
  {
    sub_1000C2108();
  }

  else
  {
    sub_1000C2118();
  }

  sub_1000C1788();
  *&v7[55] = v11;
  *&v7[71] = v12;
  *&v7[87] = v13;
  *&v7[103] = v14;
  *&v7[7] = v8;
  *&v7[23] = v9;
  *&v7[39] = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v6[48];
  *(a1 + 49) = *&v6[32];
  *(a1 + 33) = *&v6[16];
  *(a1 + 17) = *v6;
  *(a1 + 145) = *&v7[64];
  *(a1 + 161) = *&v7[80];
  *(a1 + 177) = *&v7[96];
  *(a1 + 192) = *(&v14 + 1);
  *(a1 + 81) = *v7;
  *(a1 + 97) = *&v7[16];
  result = *&v7[32];
  *(a1 + 113) = *&v7[32];
  *(a1 + 129) = *&v7[48];
  return result;
}

uint64_t sub_100040650@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v36 = sub_1000C1938();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C0E38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  v12 = type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView(0);
  v13 = v12[5];
  (*(v8 + 104))(v11, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v7);
  sub_1000C0E48();
  if (!v14)
  {
    sub_1000C0E08();
  }

  (*(v8 + 8))(v11, v7);
  v15 = &a1[v12[6]];
  v16 = *v15;
  v17 = v15[8];

  if ((v17 & 1) == 0)
  {
    sub_1000C2958();
    v18 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v36);
  }

  v19 = sub_1000C1DA8();
  v21 = v20;
  v23 = v22;

  v24 = &a1[v12[7]];
  if (sub_1000451A0())
  {
    sub_1000C1FC8();
  }

  else
  {
    sub_1000C1FD8();
  }

  v25 = v38 == 0;
  v38 = v38 != 0;
  v26 = v25;
  v27 = sub_1000C1D78();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_10000537C(v19, v21, v23 & 1);

  v41 = v26;
  v40 = v31 & 1;
  v39 = 1;
  v34 = v37;
  *v37 = 0;
  *(v34 + 8) = v38;
  *(v34 + 9) = v26;
  v34[2] = v27;
  v34[3] = v29;
  *(v34 + 32) = v31 & 1;
  v34[5] = v33;
  v34[6] = 0;
  *(v34 + 56) = 1;
  sub_100008420(v27, v29, v31 & 1);

  sub_10000537C(v27, v29, v31 & 1);
}

uint64_t sub_1000409B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v21 = sub_1000C1B58();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000EF740, &qword_1000C7980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v20 = sub_100004D04(&qword_1000EF748, &qword_1000C7988);
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = &v19 - v13;
  *v10 = sub_1000C1998();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = sub_100004D04(&qword_1000EF750, &qword_1000C7990);
  sub_100040C70(v2, &v10[*(v15 + 44)]);
  sub_1000C1B38();
  v16 = sub_100008478(&qword_1000EF758, &qword_1000EF740, &qword_1000C7980);
  sub_1000C1F28();
  (*(v3 + 8))(v6, v21);
  sub_1000084C0(v10, &qword_1000EF740, &qword_1000C7980);
  v25 = *v2;
  v23 = v7;
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100012814();
  v17 = v20;
  sub_1000C1F08();
  return (*(v11 + 8))(v14, v17);
}

uint64_t sub_100040C70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0);
  v4 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v39 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v35[-v7];
  v9 = sub_1000C1938();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v14 = a1[1];
  v42 = a1[3];
  v43 = *(a1 + 32);
  v16 = v43;

  sub_1000082B4(&v42, v41, &qword_1000ED668, &qword_1000C76F0);
  if (v16 != 1)
  {
    sub_1000C2958();
    v17 = sub_1000C1BC8();
    v37 = v9;
    v18 = v17;
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v42, &qword_1000ED668, &qword_1000C76F0);
    (*(v10 + 8))(v13, v37);
  }

  v19 = sub_1000C1DA8();
  v21 = v20;
  v23 = v22;

  sub_1000C1FD8();
  v24 = sub_1000C1D78();
  v26 = v25;
  v36 = v27;
  v37 = v28;

  sub_10000537C(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v41[0] = a1[2];
  *v8 = v41[0];
  v30 = v38;
  v31 = *(v38 + 20);
  *(v8 + v31) = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v30 + 24)) = 0x4020000000000000;
  *(v8 + *(v30 + 28)) = 0x3FF0000000000000;
  v32 = v39;
  sub_100048828(v8, v39, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  *a2 = v24;
  *(a2 + 8) = v26;
  LOBYTE(v30) = v36 & 1;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4030000000000000;
  *(a2 + 64) = 0;
  v33 = sub_100004D04(&qword_1000EF760, &qword_1000C7998);
  sub_100048828(v32, a2 + *(v33 + 64), type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_1000082B4(v41, v40, &qword_1000EF768, &unk_1000C79A0);
  sub_100008420(v24, v26, v30);

  sub_100048940(v8, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_100048940(v32, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_10000537C(v24, v26, v30);
}

uint64_t sub_1000410A8(void (*a1)(void))
{
  a1();
  sub_1000C1948();
  return v2;
}

uint64_t sub_1000410F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();

  return sub_1000C1958();
}

uint64_t sub_100041154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_1000409B8(a1);
}

uint64_t sub_100041190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v99 = sub_1000C0C58();
  v98 = *(v99 - 8);
  v3 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v5 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v114 = &v96 - v6;
  v112 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v7 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v113 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100004D04(&qword_1000EE018, &qword_1000C5D88);
  v9 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v115 = &v96 - v10;
  v105 = sub_100004D04(&qword_1000EE020, &qword_1000C5D90);
  v11 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = &v96 - v14;
  __chkstk_darwin(v15);
  v107 = &v96 - v16;
  KeyPath = sub_1000C0938();
  v17 = *(KeyPath - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(KeyPath);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004D04(&qword_1000EE028, &qword_1000C5D98);
  v22 = *(v21 - 8);
  v23 = v22[8];
  __chkstk_darwin(v21);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v96 - v27;
  v29 = sub_100004D04(&qword_1000EE030, &qword_1000C5DA0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v106 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v96 - v34;
  *v35 = sub_1000C1998();
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = &v35[*(sub_100004D04(&qword_1000EE038, &qword_1000C5DA8) + 44)];
  v37 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  v38 = *(v17 + 16);
  v110 = a1;
  v38(v20, a1 + v37, KeyPath);
  v116 = a1;
  sub_100004D04(&qword_1000EE040, &qword_1000C5DB0);
  sub_1000485EC();
  sub_1000C1CE8();
  v39 = v22[2];
  v39(v25, v28, v21);
  v39(v36, v25, v21);
  v40 = &v36[*(sub_100004D04(&qword_1000EE070, &qword_1000C5DC0) + 48)];
  *v40 = 0;
  v40[8] = 1;
  v41 = v22[1];
  v41(v28, v21);
  v41(v25, v21);
  v42 = v110;
  LOBYTE(v21) = sub_1000C1BF8();
  sub_1000C15A8();
  v43 = v35;
  v44 = &v35[*(v30 + 44)];
  *v44 = v21;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  KeyPath = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v101 = swift_getKeyPath();
  v96 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  v50 = *(v96 + 40);
  if ((sub_1000451A0() & 1) == 0)
  {
    if (qword_1000EC960 != -1)
    {
      swift_once();
    }

    v51 = &qword_1000EDD70;
    goto LABEL_7;
  }

  if (qword_1000EC980 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v51 = &qword_1000FAB08;
LABEL_7:
    v52 = v114;
    v53 = v115;
    v55 = v112;
    v54 = v113;
    v115 = *v51;

    v118 = 0;
    v117 = 0;
    sub_100048828(v42, v54, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    v56 = v54 + v55[9];
    *v56 = swift_getKeyPath();
    *(v56 + 8) = 0;
    v57 = v54 + v55[10];
    *v57 = swift_getKeyPath();
    *(v57 + 8) = 0;
    v58 = v54 + v55[11];
    *v58 = swift_getKeyPath();
    *(v58 + 8) = 0;
    *(v54 + v55[5]) = 5;
    v59 = v54 + v55[6];
    *v59 = 0;
    *(v59 + 8) = 1;
    *(v54 + v55[7]) = 0;
    v60 = (v54 + v55[8]);
    *v60 = vdupq_n_s64(0x4041000000000000uLL);
    v60[1].i8[0] = 0;
    v61 = enum case for DynamicTypeSize.xxxLarge(_:);
    v62 = sub_1000C16C8();
    (*(*(v62 - 8) + 104))(v52, v61, v62);
    sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
    if (sub_1000C2608())
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v114 = v49;
  sub_100048784(&qword_1000EE080, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
  sub_1000C1EE8();
  sub_1000084C0(v52, &qword_1000EE010, &qword_1000C5D80);
  sub_100048940(v54, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  v63 = sub_1000C1BE8();
  sub_1000C15A8();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = &v53[*(sub_100004D04(&qword_1000EE088, &qword_1000C5E98) + 36)];
  *v72 = v63;
  *(v72 + 1) = v65;
  *(v72 + 2) = v67;
  *(v72 + 3) = v69;
  *(v72 + 4) = v71;
  v72[40] = 0;
  v73 = swift_getKeyPath();
  v74 = sub_1000423D8();
  v75 = &v53[*(v103 + 36)];
  *v75 = v73;
  v75[1] = v74;
  v76 = swift_getKeyPath();
  if (sub_1000451A0())
  {
    v77 = sub_1000C1FC8();
  }

  else
  {
    v78 = v42 + *(v96 + 20);
    v79 = v97;
    sub_1000C0EC8();
    sub_1000C0C38();
    (*(v98 + 8))(v79, v99);
    v77 = sub_1000C1FF8();
  }

  v80 = v77;
  v81 = v53;
  v82 = v104;
  sub_10001DA60(v81, v104, &qword_1000EE018, &qword_1000C5D88);
  v83 = (v82 + *(v105 + 36));
  *v83 = v76;
  v83[1] = v80;
  v84 = v82;
  v85 = v107;
  sub_10001DA60(v84, v107, &qword_1000EE020, &qword_1000C5D90);
  v100 = v43;
  v86 = v106;
  sub_1000082B4(v43, v106, &qword_1000EE030, &qword_1000C5DA0);
  v87 = v117;
  v88 = v118;
  v89 = v108;
  sub_1000082B4(v85, v108, &qword_1000EE020, &qword_1000C5D90);
  v90 = v109;
  sub_1000082B4(v86, v109, &qword_1000EE030, &qword_1000C5DA0);
  v91 = sub_100004D04(&qword_1000EE090, &unk_1000C5EC8);
  v92 = v90 + *(v91 + 48);
  *v92 = 0;
  *(v92 + 8) = 0;
  v93 = KeyPath;
  *(v92 + 16) = KeyPath;
  *(v92 + 24) = v88;
  v94 = v115;
  *(v92 + 32) = v114;
  *(v92 + 40) = v87;
  *(v92 + 48) = v101;
  *(v92 + 56) = v94;
  sub_1000082B4(v89, v90 + *(v91 + 64), &qword_1000EE020, &qword_1000C5D90);
  sub_1000489F4(v93, v88 & 1);

  sub_1000084C0(v85, &qword_1000EE020, &qword_1000C5D90);
  sub_1000084C0(v100, &qword_1000EE030, &qword_1000C5DA0);
  sub_1000084C0(v89, &qword_1000EE020, &qword_1000C5D90);
  sub_100048A00(v93, v88 & 1);

  return sub_1000084C0(v86, &qword_1000EE030, &qword_1000C5DA0);
}

uint64_t sub_100041CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048828(a1, v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v12 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  v13 = *(v12 + 20);
  v14 = *(v8 + 20);
  v15 = sub_1000C0EF8();
  (*(*(v15 - 8) + 16))(&v11[v14], a1 + v13, v15);
  v16 = *(v12 + 24);
  v17 = *(v8 + 24);
  v18 = sub_1000C0AF8();
  (*(*(v18 - 8) + 16))(&v11[v17], a1 + v16, v18);
  v19 = enum case for DynamicTypeSize.xxLarge(_:);
  v20 = sub_1000C16C8();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_100048784(&qword_1000EE050, type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
    sub_1000C1EE8();
    sub_1000084C0(v7, &qword_1000EE010, &qword_1000C5D80);
    sub_100048940(v11, type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView);
    KeyPath = swift_getKeyPath();
    v23 = sub_100042000();
    result = sub_100004D04(&qword_1000EE040, &qword_1000C5DB0);
    v24 = (a2 + *(result + 36));
    *v24 = KeyPath;
    v24[1] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042000()
{
  v1 = v0;
  v2 = sub_1000C0C58();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C1778();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_1000C2338();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  v19 = v0 + v18[8];
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v17);
  LOBYTE(v19) = sub_10002E38C();
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    return sub_1000C1F98();
  }

  v21 = v1 + v18[10];
  if (sub_1000451A0())
  {
    if (qword_1000EC980 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v22 = v1 + v18[7];
    sub_10002C764(&qword_1000EDDB8, &qword_1000C8030, &type metadata accessor for RedactionReasons, v12);
    sub_100048784(&qword_1000EE0C0, &type metadata accessor for RedactionReasons);
    sub_1000C2A78();
    sub_100048784(&qword_1000EE0C8, &type metadata accessor for RedactionReasons);
    v23 = sub_1000C2608();
    v24 = *(v28 + 8);
    v24(v9, v6);
    v24(v12, v6);
    v25 = v1 + v18[5];
    sub_1000C0EC8();
    sub_1000C0C38();
    (*(v29 + 8))(v5, v30);
    result = sub_1000C1FF8();
    if ((v23 & 1) == 0)
    {
      v26 = sub_1000C1FB8();

      return v26;
    }
  }

  return result;
}

uint64_t sub_1000423D8()
{
  v0 = sub_1000C1C98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000C1CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, enum case for Font.TextStyle.title(_:), v9, v12);
  v15 = enum case for Font.Design.rounded(_:);
  v16 = sub_1000C1C38();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v8, v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  sub_1000C1C78();
  sub_1000084C0(v8, &qword_1000ECC38, &qword_1000C3720);
  (*(v10 + 8))(v14, v9);
  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
  sub_1000C1CB8();

  (*(v1 + 8))(v4, v0);
  sub_1000C1C58();
  v18 = sub_1000C1C88();

  return v18;
}

uint64_t sub_1000426B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_100004D04(&qword_1000EDFC0, &qword_1000C5D18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v30 - v10);
  v12 = sub_100004D04(&qword_1000EDFC8, &qword_1000C5D20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  *v11 = sub_1000C20F8();
  v11[1] = v16;
  v17 = v11 + *(sub_100004D04(&qword_1000EDFD0, &qword_1000C5D28) + 44);
  *v17 = sub_1000C1A48();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_100004D04(&qword_1000EDFD8, &qword_1000C5D30);
  sub_100041190(v2, &v17[*(v18 + 44)]);
  v19 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  v20 = sub_1000C0938();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, v2 + v19, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  sub_100008478(&qword_1000EDFE0, &qword_1000EDFC0, &qword_1000C5D18);
  sub_1000C1E38();
  sub_1000084C0(v7, &qword_1000ECCE0, &qword_1000C4EF0);
  sub_1000084C0(v11, &qword_1000EDFC0, &qword_1000C5D18);
  v22 = sub_1000C1BD8();
  v23 = &v15[*(v12 + 36)];
  *v23 = v22;
  *(v23 + 8) = xmmword_1000C5A50;
  *(v23 + 24) = xmmword_1000C5A60;
  v23[40] = 0;
  sub_1000C1FA8();
  sub_1000483E0();
  sub_1000C1E28();

  sub_1000084C0(v15, &qword_1000EDFC8, &qword_1000C5D20);
  KeyPath = swift_getKeyPath();
  v25 = (a1 + *(sub_100004D04(&qword_1000EE000, &qword_1000C5D70) + 36));
  v26 = *(sub_100004D04(&qword_1000EE008, &qword_1000C5D78) + 28);
  v27 = enum case for ColorScheme.light(_:);
  v28 = sub_1000C15B8();
  result = (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = KeyPath;
  return result;
}

void sub_100042A3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_100004D04(&qword_1000EE268, &qword_1000C6230);
  v4 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_1000C0F08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v31 - v15);
  v17 = *(type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(0) + 20);
  v32 = a1;
  sub_1000C0EE8();
  v18 = *(v10 + 88);
  if (v18(v16, v9) == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v10 + 96))(v16, v9);
    v19 = *v16;
    v20 = sub_1000C2A08();
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v20 = 0;
  }

  v21 = v32;
  sub_1000C0EE8();
  if (v18(v13, v9) == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v10 + 96))(v13, v9);
    v23 = *v13;
    v22 = v13[1];
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v23 = 0;
    v22 = 0;
  }

  KeyPath = swift_getKeyPath();
  *v8 = sub_1000C1A48();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v25 = sub_100004D04(&qword_1000EE270, &qword_1000C6238);
  sub_100042DCC(v21, &v8[*(v25 + 44)]);
  v26 = swift_getKeyPath();
  v27 = v34;
  v28 = &v8[*(v33 + 36)];
  *v28 = v26;
  v28[8] = 1;
  sub_1000082B4(v8, v27, &qword_1000EE268, &qword_1000C6230);
  *a2 = v20;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  *(a2 + 24) = 0;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  v29 = sub_100004D04(&qword_1000EE278, &qword_1000C6270);
  sub_1000082B4(v27, a2 + *(v29 + 48), &qword_1000EE268, &qword_1000C6230);

  v30 = v20;
  sub_1000084C0(v8, &qword_1000EE268, &qword_1000C6230);
  sub_1000084C0(v27, &qword_1000EE268, &qword_1000C6230);
}

uint64_t sub_100042DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v82 = a2;
  v2 = sub_100004D04(&qword_1000EE280, &qword_1000C6278);
  v3 = *(v2 - 8);
  v80 = v2;
  v81 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v76 = &v63 - v5;
  v6 = sub_100004D04(&qword_1000EE288, &qword_1000C6280);
  v7 = *(v6 - 8);
  v78 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v63 - v11;
  v12 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v63 - v14;
  v16 = sub_100004D04(&qword_1000EE290, &qword_1000C6288);
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  v65 = sub_100004D04(&qword_1000EE298, &qword_1000C6290);
  v21 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v23 = &v63 - v22;
  v24 = sub_100004D04(&qword_1000EE2A0, &qword_1000C6298);
  v25 = *(v24 - 8);
  v68 = v24 - 8;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v75 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v64 = &v63 - v29;
  v30 = sub_1000C1988();
  LOBYTE(v98) = 0;
  sub_100043654(v88);
  *&v87[7] = v88[0];
  *&v87[23] = v88[1];
  *&v87[39] = v88[2];
  *&v87[55] = v88[3];
  v31 = v98;
  v32 = sub_1000C1CC8();
  KeyPath = swift_getKeyPath();
  *&v99[17] = *&v87[16];
  *&v99[33] = *&v87[32];
  *&v99[49] = *&v87[48];
  v98 = v30;
  v99[0] = v31;
  *&v99[1] = *v87;
  *&v99[64] = *&v87[63];
  *&v99[72] = KeyPath;
  *&v100 = v32;
  v34 = enum case for Font.Design.rounded(_:);
  v72 = enum case for Font.Design.rounded(_:);
  v35 = sub_1000C1C38();
  v36 = *(v35 - 8);
  v37 = *(v36 + 104);
  v71 = v36 + 104;
  v73 = v37;
  v37(v15, v34, v35);
  v70 = *(v36 + 56);
  v70(v15, 0, 1, v35);
  v38 = sub_100004D04(&qword_1000EE2A8, &qword_1000C62D0);
  v39 = sub_10004B48C();
  sub_1000C1E68();
  sub_1000084C0(v15, &qword_1000ECC38, &qword_1000C3720);
  v89[4] = *&v99[48];
  v89[5] = *&v99[64];
  v90 = v100;
  v89[0] = v98;
  v89[1] = *v99;
  v89[2] = *&v99[16];
  v89[3] = *&v99[32];
  sub_1000084C0(v89, &qword_1000EE2A8, &qword_1000C62D0);
  sub_1000C1C58();
  *&v98 = v38;
  *(&v98 + 1) = v39;
  v69 = &opaque type descriptor for <<opaque return type of View.fontDesign(_:)>>;
  swift_getOpaqueTypeConformance2();
  v40 = v66;
  sub_1000C1E78();
  (*(v67 + 8))(v20, v40);
  v41 = swift_getKeyPath();
  v42 = &v23[*(v65 + 36)];
  *v42 = v41;
  *(v42 + 1) = 1;
  v42[16] = 0;
  sub_10004B5D4();
  v43 = v64;
  sub_1000C1EF8();
  sub_1000084C0(v23, &qword_1000EE298, &qword_1000C6290);
  v44 = sub_1000C1FD8();
  v45 = swift_getKeyPath();
  v46 = (v43 + *(v68 + 44));
  *v46 = v45;
  v46[1] = v44;
  v47 = sub_1000C1998();
  LOBYTE(v97[0]) = 0;
  sub_1000437BC(v74, &v98);
  v93 = *&v99[16];
  v94[0] = *&v99[32];
  *(v94 + 9) = *&v99[41];
  v91 = v98;
  v92 = *v99;
  v95[2] = *&v99[16];
  v96[0] = *&v99[32];
  *(v96 + 9) = *&v99[41];
  v95[0] = v98;
  v95[1] = *v99;
  sub_1000082B4(&v91, &v83, &qword_1000EE2D0, &qword_1000C6350);
  sub_1000084C0(v95, &qword_1000EE2D0, &qword_1000C6350);
  *(&v86[1] + 7) = v92;
  *(&v86[2] + 7) = v93;
  *(&v86[3] + 7) = v94[0];
  v86[4] = *(v94 + 9);
  *(v86 + 7) = v91;
  LOBYTE(v23) = v97[0];
  v48 = sub_1000C1CA8();
  v49 = swift_getKeyPath();
  *(&v84[1] + 1) = v86[1];
  *(&v84[2] + 1) = v86[2];
  *(&v84[3] + 1) = v86[3];
  v83 = v47;
  LOBYTE(v84[0]) = v23;
  *(&v84[4] + 1) = v86[4];
  *(v84 + 1) = v86[0];
  *(&v84[5] + 1) = v97[0];
  DWORD1(v84[5]) = *(v97 + 3);
  *(&v84[5] + 1) = v49;
  v85 = v48;
  v73(v15, v72, v35);
  v70(v15, 0, 1, v35);
  v50 = sub_100004D04(&qword_1000EE2D8, &qword_1000C6358);
  v51 = sub_10004B764();
  v52 = v76;
  sub_1000C1E68();
  sub_1000084C0(v15, &qword_1000ECC38, &qword_1000C3720);
  *&v99[48] = v84[3];
  *&v99[64] = v84[4];
  v100 = v84[5];
  v101 = v85;
  v98 = v83;
  *v99 = v84[0];
  *&v99[16] = v84[1];
  *&v99[32] = v84[2];
  sub_1000084C0(&v98, &qword_1000EE2D8, &qword_1000C6358);
  sub_1000C1C58();
  *&v83 = v50;
  *(&v83 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v53 = v77;
  v54 = v80;
  sub_1000C1E78();
  (*(v81 + 8))(v52, v54);
  v55 = sub_1000C1FC8();
  v56 = swift_getKeyPath();
  v57 = (v53 + *(v78 + 44));
  *v57 = v56;
  v57[1] = v55;
  v58 = v75;
  sub_1000082B4(v43, v75, &qword_1000EE2A0, &qword_1000C6298);
  v59 = v79;
  sub_1000082B4(v53, v79, &qword_1000EE288, &qword_1000C6280);
  v60 = v82;
  sub_1000082B4(v58, v82, &qword_1000EE2A0, &qword_1000C6298);
  v61 = sub_100004D04(&qword_1000EE2F8, &qword_1000C6368);
  sub_1000082B4(v59, v60 + *(v61 + 48), &qword_1000EE288, &qword_1000C6280);
  sub_1000084C0(v53, &qword_1000EE288, &qword_1000C6280);
  sub_1000084C0(v43, &qword_1000EE2A0, &qword_1000C6298);
  sub_1000084C0(v59, &qword_1000EE288, &qword_1000C6280);
  return sub_1000084C0(v58, &qword_1000EE2A0, &qword_1000C6298);
}

uint64_t sub_100043654@<X0>(uint64_t a1@<X8>)
{
  sub_1000C19E8();
  v2 = sub_1000C1DB8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1000C2018();
  v9 = sub_1000C1DF8();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v14;
  sub_100008420(v2, v4, v6 & 1);

  sub_100008420(v9, v11, v13);

  sub_10000537C(v9, v11, v13);

  sub_10000537C(v2, v4, v6 & 1);
}

uint64_t sub_1000437BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v63 = &v52 - v5;
  v64 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  v6 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v52 - v9;
  v10 = sub_1000C0AF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v15 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v58 = &v52 - v16;
  v17 = sub_1000C19D8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C19E8();
  v21 = sub_1000C1DB8();
  v56 = v22;
  v60 = v23;
  v25 = v24;
  sub_1000C19C8();
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v61 = v20;
  sub_1000C19B8(v70);
  sub_1000C0AB8();
  v26 = *(type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(0) + 24);
  sub_100048784(&qword_1000EE318, &type metadata accessor for Date);
  v27 = a1;
  v28 = v10;
  result = sub_1000C25E8();
  if (result)
  {
    v55 = v21;
    v30 = *(v11 + 32);
    v31 = v59;
    v30(v59, v14, v28);
    v53 = v30;
    v32 = v64;
    (*(v11 + 16))(v31 + *(v64 + 48), v27 + v26, v28);
    v33 = v62;
    sub_1000082B4(v31, v62, &qword_1000EE308, &unk_1000C8CC0);
    v52 = *(v32 + 48);
    v34 = v58;
    v30(v58, v33, v28);
    v54 = v25;
    v35 = v65;
    v36 = *(v11 + 8);
    v36(v33 + v52, v28);
    sub_10001DA60(v31, v33, &qword_1000EE308, &unk_1000C8CC0);
    v53(&v34[*(v57 + 36)], v33 + *(v32 + 48), v28);
    v36(v33, v28);
    (*(v11 + 56))(v63, 1, 1, v28);
    v37 = sub_1000C1D68();
    v39 = v38;
    v41 = v40;
    sub_1000C19A8();
    sub_10000537C(v37, v39, v41 & 1);

    v71._countAndFlagsBits = 1852402976;
    v71._object = 0xE400000000000000;
    sub_1000C19B8(v71);
    sub_1000C19F8();
    v42 = sub_1000C1DB8();
    v44 = v43;
    v45 = v60 & 1;
    v69 = v60 & 1;
    v68 = v60 & 1;
    v47 = v46 & 1;
    v67 = v46 & 1;
    v66 = 1;
    v48 = v55;
    v49 = v56;
    *v35 = v55;
    *(v35 + 8) = v49;
    *(v35 + 16) = v45;
    *(v35 + 24) = v54;
    *(v35 + 32) = v42;
    *(v35 + 40) = v43;
    *(v35 + 48) = v46 & 1;
    *(v35 + 56) = v50;
    *(v35 + 64) = 0;
    *(v35 + 72) = 1;
    v51 = v48;
    sub_100008420(v48, v49, v45);

    sub_100008420(v42, v44, v47);

    sub_10000537C(v42, v44, v47);

    sub_10000537C(v51, v49, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100043D60(uint64_t a1@<X8>)
{
  *a1 = sub_1000C1998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100004D04(&qword_1000EE260, &qword_1000C6228);
  sub_100042A3C(v1, a1 + *(v3 + 44));
}

uint64_t sub_100043E84(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v25 = a3;
  v4 = sub_1000C1C98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1000C1CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v18, *a2, v13, v16);
  v19 = enum case for Font.Design.rounded(_:);
  v20 = sub_1000C1C38();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v12, v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_1000C1C78();
  sub_1000084C0(v12, &qword_1000ECC38, &qword_1000C3720);
  (*(v14 + 8))(v18, v13);
  (*(v5 + 104))(v8, enum case for Font.Leading.tight(_:), v4);
  v22 = sub_1000C1CB8();

  result = (*(v5 + 8))(v8, v4);
  *v25 = v22;
  return result;
}

uint64_t sub_10004418C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v25 = a3;
  v4 = sub_1000C1C98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1000C1CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v18, *a2, v13, v16);
  v19 = enum case for Font.Design.rounded(_:);
  v20 = sub_1000C1C38();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v12, v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_1000C1C78();
  sub_1000084C0(v12, &qword_1000ECC38, &qword_1000C3720);
  (*(v14 + 8))(v18, v13);
  sub_1000C1C58();
  sub_1000C1C88();

  (*(v5 + 104))(v8, enum case for Font.Leading.tight(_:), v4);
  v22 = sub_1000C1CB8();

  result = (*(v5 + 8))(v8, v4);
  *v25 = v22;
  return result;
}

uint64_t sub_1000444C0(uint64_t a1, unsigned int *a2, void (*a3)(uint64_t), uint64_t *a4)
{
  v7 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_1000C1CD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, *a2, v11, v14);
  v17 = enum case for Font.Design.rounded(_:);
  v18 = sub_1000C1C38();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_1000C1C78();
  sub_1000084C0(v10, &qword_1000ECC38, &qword_1000C3720);
  v20 = (*(v12 + 8))(v16, v11);
  a3(v20);
  v21 = sub_1000C1C88();

  *a4 = v21;
  return result;
}

uint64_t sub_1000446FC()
{
  v0 = sub_1000C1C98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  sub_1000C1C48();
  v9 = enum case for Font.Design.rounded(_:);
  v10 = sub_1000C1C38();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_1000C1C68();
  sub_1000084C0(v8, &qword_1000ECC38, &qword_1000C3720);
  (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
  v12 = sub_1000C1CB8();

  result = (*(v1 + 8))(v4, v0);
  qword_1000EDD48 = v12;
  return result;
}

uint64_t sub_10004493C()
{
  result = sub_1000C1FC8();
  qword_1000EDD50 = result;
  return result;
}

uint64_t sub_100044980()
{
  if (qword_1000EC910 != -1)
  {
    swift_once();
  }

  sub_1000C1C58();
  v0 = sub_1000C1C88();

  qword_1000EDD58 = v0;
  return result;
}

uint64_t sub_100044A20()
{
  result = sub_1000C1F88();
  qword_1000EDD60 = result;
  return result;
}

uint64_t sub_100044A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004BCC0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100044AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004BC3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100044B34()
{
  sub_1000C0C88();
  result = sub_1000C1FF8();
  qword_1000EDD68 = result;
  return result;
}

uint64_t sub_100044B7C()
{
  v0 = [objc_opt_self() separatorColor];
  result = sub_1000C1FF8();
  qword_1000EDD70 = result;
  return result;
}

uint64_t sub_100044BE0(void *a1)
{
  sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C3590;
  v3 = a1[1];
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  if (*(a1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 60)) == 1)
  {

    v14._countAndFlagsBits = 0x696C207472616D53;
    v15._object = 0x80000001000CD4E0;
    v14._object = 0xEA00000000007473;
    v15._countAndFlagsBits = 0xD00000000000003CLL;
    v4 = sub_1000C0D78(v14, v15);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      v11 = v4;
      v12 = v5;
      v13 = sub_100022328((v6 > 1), v7 + 1, 1, v2);
      v5 = v12;
      v2 = v13;
      v4 = v11;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
  }

  else
  {
  }

  sub_1000C0CD8();
  sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
  sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430);
  v9 = sub_1000C25B8();

  return v9;
}

uint64_t sub_100044D9C(uint64_t a1)
{
  v2 = sub_1000C0E38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 1)
  {
    v10 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 28);
    (*(v3 + 104))(v6, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v2);
    v11 = sub_1000C0E48();
    if (!v12)
    {
      v11 = sub_1000C0E08();
    }

    v7 = v11;
    v9 = v12;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v7 = sub_1000C0E18();
    v9 = v8;
  }

  v13 = sub_100022328(0, 1, 1, _swiftEmptyArrayStorage);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_100022328((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = v7;
  *(v16 + 5) = v9;
  v17 = type metadata accessor for TTRNewWidgetViewModel(0);
  v18 = (a1 + v17[13]);
  v19 = v18[1];
  if (!v19)
  {
    v21 = v17[11];
    v22 = *(a1 + v21 + 8);
    if (!v22)
    {
      goto LABEL_21;
    }

    v24 = (a1 + v17[14]);
    v23 = v24[1];
    if (v23)
    {
      v20 = *v24;
      v25 = v24[1];
    }

    else
    {
      v20 = 0;
      v23 = 0xE000000000000000;
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    goto LABEL_17;
  }

  v20 = *v18;
  v21 = v17[11];
  v22 = *(a1 + v21 + 8);
  v40 = 0;
  v41 = 0xE000000000000000;
  if (v22)
  {
    v23 = v19;
LABEL_17:
    v28 = *(a1 + v21);

    v42._countAndFlagsBits = v28;
    v42._object = v22;
    sub_1000C26D8(v42);
    v26 = v40;
    v27 = v41;
    goto LABEL_18;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  v23 = v19;
LABEL_18:
  v44._countAndFlagsBits = 0x6567646162204025;
  v44._object = 0xEC0000004025202CLL;
  v43._object = 0x80000001000CD1B0;
  v45._countAndFlagsBits = 0xD00000000000006ELL;
  v45._object = 0x80000001000CD1E0;
  v43._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1000C0D68(v43, v44, v45);
  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000C44F0;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_10002C68C();
  *(v29 + 32) = v20;
  *(v29 + 40) = v23;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = v26;
  *(v29 + 80) = v27;
  v31 = sub_1000C2648();
  v33 = v32;

  v35 = *(v13 + 2);
  v34 = *(v13 + 3);
  if (v35 >= v34 >> 1)
  {
    v13 = sub_100022328((v34 > 1), v35 + 1, 1, v13);
  }

  *(v13 + 2) = v35 + 1;
  v36 = &v13[16 * v35];
  *(v36 + 4) = v31;
  *(v36 + 5) = v33;
LABEL_21:
  v40 = v13;
  sub_1000C0CD8();
  sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
  sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430);
  v37 = sub_1000C25B8();

  return v37;
}

uint64_t sub_1000451A0()
{
  v0 = sub_1000C2338();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, &v13 - v6);
  sub_1000C2328();
  sub_100048784(&qword_1000EE0B0, &type metadata accessor for WidgetRenderingMode);
  v8 = sub_1000C2608();
  v9 = *(v1 + 8);
  v9(v5, v0);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    sub_1000C2318();
    v11 = sub_1000C2608();
    v9(v5, v0);
    if (v11)
    {
      v10 = 1;
    }

    else
    {
      sub_1000C2308();
      v10 = sub_1000C2608();
      v9(v5, v0);
    }
  }

  v9(v7, v0);
  return v10 & 1;
}

uint64_t sub_1000453C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004D04(&qword_1000EEE60, &qword_1000C6F00);
    v1 = sub_1000C2C68();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    sub_10005C774();
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_10004BC2C((v28 + 8), v26);
    sub_10004BC2C(v26, v28);
    v16 = v1[5];
    sub_1000C2678();
    sub_1000C2D68();
    sub_1000C26C8();
    v17 = sub_1000C2D88();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_10004BC2C(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100045698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_10004BC2C(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_1000084C0(v14, &qword_1000EE398, &qword_1000C6440);
}

uint64_t sub_100045744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C18A8();
  *a1 = result;
  return result;
}

uint64_t sub_100045770(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C18B8();
}

uint64_t sub_10004579C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C1908();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000457D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000C1918();
}

uint64_t sub_100045850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100045920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C1838();
  *a1 = result;
  return result;
}

uint64_t sub_10004594C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C1848();
}

unint64_t sub_100045998()
{
  result = qword_1000EDDA0;
  if (!qword_1000EDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDDA0);
  }

  return result;
}

char *sub_100045A20(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[5];
    v21 = sub_1000C0EF8();
    v22 = *(*(v21 - 8) + 16);
    v23 = v19;
    v22(&v6[v20], a2 + v20, v21);
    v24 = a3[6];
    v25 = sub_1000C0AF8();
    (*(*(v25 - 8) + 16))(&v6[v24], a2 + v24, v25);
    v26 = a3[7];
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = sub_1000C1778();
      (*(*(v27 - 8) + 16))(&v6[v26], a2 + v26, v27);
    }

    else
    {
      *&v6[v26] = *(a2 + v26);
    }

    swift_storeEnumTagMultiPayload();
    v28 = a3[8];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = sub_1000C2338();
      (*(*(v29 - 8) + 16))(&v6[v28], a2 + v28, v29);
    }

    else
    {
      *&v6[v28] = *(a2 + v28);
    }

    swift_storeEnumTagMultiPayload();
    v30 = a3[9];
    v31 = a3[10];
    v32 = &v6[v30];
    v33 = (a2 + v30);
    v34 = *v33;
    LOBYTE(v33) = *(v33 + 8);
    *v32 = v34;
    v32[8] = v33;

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = sub_1000C2338();
      (*(*(v35 - 8) + 16))(&v6[v31], a2 + v31, v35);
    }

    else
    {
      *&v6[v31] = *(a2 + v31);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v6;
}

uint64_t sub_100045E6C(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = a2[5];
  v11 = sub_1000C0EF8();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = a2[6];
  v13 = sub_1000C0AF8();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v14 = a2[7];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000C1778();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  else
  {
    v16 = *(a1 + v14);
  }

  v17 = a2[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1000C2338();
    (*(*(v18 - 8) + 8))(a1 + v17, v18);
  }

  else
  {
    v19 = *(a1 + v17);
  }

  v20 = *(a1 + a2[9]);

  v21 = a2[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1000C2338();
    v23 = *(*(v22 - 8) + 8);

    return v23(a1 + v21, v22);
  }

  else
  {
    v25 = *(a1 + v21);
  }
}

char *sub_100046164(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[5];
  v20 = sub_1000C0EF8();
  v21 = *(*(v20 - 8) + 16);
  v22 = v18;
  v21(&a1[v19], a2 + v19, v20);
  v23 = a3[6];
  v24 = sub_1000C0AF8();
  (*(*(v24 - 8) + 16))(&a1[v23], a2 + v23, v24);
  v25 = a3[7];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1000C1778();
    (*(*(v26 - 8) + 16))(&a1[v25], a2 + v25, v26);
  }

  else
  {
    *&a1[v25] = *(a2 + v25);
  }

  swift_storeEnumTagMultiPayload();
  v27 = a3[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_1000C2338();
    (*(*(v28 - 8) + 16))(&a1[v27], a2 + v27, v28);
  }

  else
  {
    *&a1[v27] = *(a2 + v27);
  }

  swift_storeEnumTagMultiPayload();
  v29 = a3[9];
  v30 = a3[10];
  v31 = &a1[v29];
  v32 = (a2 + v29);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  v31[8] = v32;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1000C2338();
    (*(*(v34 - 8) + 16))(&a1[v30], a2 + v30, v34);
  }

  else
  {
    *&a1[v30] = *(a2 + v30);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100046558(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    (*(v15 + 8))(a1 + v13, v14);
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 24))(a1 + v13, a2 + v13, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  v26 = a3[5];
  v27 = sub_1000C0EF8();
  (*(*(v27 - 8) + 24))(a1 + v26, a2 + v26, v27);
  v28 = a3[6];
  v29 = sub_1000C0AF8();
  (*(*(v29 - 8) + 24))(a1 + v28, a2 + v28, v29);
  if (a1 != a2)
  {
    v30 = a3[7];
    sub_1000084C0(a1 + v30, &qword_1000EDDB8, &qword_1000C8030);
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = sub_1000C1778();
      (*(*(v31 - 8) + 16))(a1 + v30, a2 + v30, v31);
    }

    else
    {
      *(a1 + v30) = *(a2 + v30);
    }

    swift_storeEnumTagMultiPayload();
    v32 = a3[8];
    sub_1000084C0(a1 + v32, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_1000C2338();
      (*(*(v33 - 8) + 16))(a1 + v32, a2 + v32, v33);
    }

    else
    {
      *(a1 + v32) = *(a2 + v32);
    }

    swift_storeEnumTagMultiPayload();
  }

  v34 = a3[9];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = *v35;
  *v35 = v37;
  *(v35 + 8) = v36;

  if (a1 != a2)
  {
    v39 = a3[10];
    sub_1000084C0(a1 + v39, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = sub_1000C2338();
      (*(*(v40 - 8) + 16))(a1 + v39, a2 + v39, v40);
    }

    else
    {
      *(a1 + v39) = *(a2 + v39);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100046A38(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[5];
  v15 = sub_1000C0EF8();
  (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
  v16 = a3[6];
  v17 = sub_1000C0AF8();
  (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
  v18 = a3[7];
  v19 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000C1778();
    (*(*(v20 - 8) + 32))(&a1[v18], &a2[v18], v20);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v18], &a2[v18], *(*(v19 - 8) + 64));
  }

  v21 = a3[8];
  v22 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1000C2338();
    (*(*(v23 - 8) + 32))(&a1[v21], &a2[v21], v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
  }

  v24 = a3[9];
  v25 = a3[10];
  v26 = &a1[v24];
  v27 = &a2[v24];
  *v26 = *v27;
  v26[8] = v27[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_1000C2338();
    (*(*(v28 - 8) + 32))(&a1[v25], &a2[v25], v28);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v25], &a2[v25], *(*(v22 - 8) + 64));
  }

  return a1;
}

char *sub_100046E38(char *a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(&a1[v9], 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    (*(v11 + 8))(&a1[v9], v10);
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v9], &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 40))(&a1[v9], &a2[v9], v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  v18 = v8[8];
  v19 = *&a1[v18];
  *&a1[v18] = *&a2[v18];

  *&a1[v8[9]] = *&a2[v8[9]];
  a1[v8[10]] = a2[v8[10]];
  a1[v8[11]] = a2[v8[11]];
  v20 = a3[5];
  v21 = sub_1000C0EF8();
  (*(*(v21 - 8) + 40))(&a1[v20], &a2[v20], v21);
  v22 = a3[6];
  v23 = sub_1000C0AF8();
  (*(*(v23 - 8) + 40))(&a1[v22], &a2[v22], v23);
  if (a1 != a2)
  {
    v24 = a3[7];
    sub_1000084C0(&a1[v24], &qword_1000EDDB8, &qword_1000C8030);
    v25 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = sub_1000C1778();
      (*(*(v26 - 8) + 32))(&a1[v24], &a2[v24], v26);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v24], &a2[v24], *(*(v25 - 8) + 64));
    }

    v27 = a3[8];
    sub_1000084C0(&a1[v27], &qword_1000EDDC0, &qword_1000C5B60);
    v28 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = sub_1000C2338();
      (*(*(v29 - 8) + 32))(&a1[v27], &a2[v27], v29);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v27], &a2[v27], *(*(v28 - 8) + 64));
    }
  }

  v30 = a3[9];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *v32;
  LOBYTE(v32) = v32[8];
  v34 = *v31;
  *v31 = v33;
  v31[8] = v32;

  if (a1 != a2)
  {
    v35 = a3[10];
    sub_1000084C0(&a1[v35], &qword_1000EDDC0, &qword_1000C5B60);
    v36 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = sub_1000C2338();
      (*(*(v37 - 8) + 32))(&a1[v35], &a2[v35], v37);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v35], &a2[v35], *(*(v36 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_100047348(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000C0EF8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1000C0AF8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  if (a2 == 254)
  {
    v18 = *(a1 + a3[9] + 8);
    if (v18 > 1)
    {
      return (v18 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v20 = *(*(IsVibrantText - 8) + 48);
    v21 = a1 + a3[10];

    return v20(v21, a2, IsVibrantText);
  }
}

uint64_t sub_1000475DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000C0EF8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000C0AF8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  result = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v20 = *(*(IsVibrantText - 8) + 56);
    v21 = a1 + a4[10];

    return v20(v21, a2, a2, IsVibrantText);
  }

  return result;
}

void sub_100047860()
{
  v0 = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_1000C0EF8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1000C0AF8();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10005435C(319, &qword_1000EDE40, &type metadata accessor for RedactionReasons);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_initStructMetadata();
          }
        }
      }
    }
  }
}

uint64_t *sub_100047A20(uint64_t *a1, uint64_t *a2)
{
  v4 = *(*(sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v6 = *a2;
    *a1 = *a2;
    a1 = (v6 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1000C2338();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100047B30(uint64_t *a1)
{
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1000C2338();
    v3 = *(*(v2 - 8) + 8);

    return v3(a1, v2);
  }

  else
  {
    v5 = *a1;
  }
}

void *sub_100047BDC(void *a1, void *a2)
{
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1000C2338();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_100047CA0(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_1000084C0(a1, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_1000C2338();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_100047D84(void *a1, const void *a2)
{
  v4 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }
}

void *sub_100047E68(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1000084C0(a1, &qword_1000EDDC0, &qword_1000C5B60);
  v4 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_100047F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100048088()
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

uint64_t sub_100048290()
{
  sub_100005334(&qword_1000EDD90, &unk_1000C5B08);
  sub_100005334(&qword_1000EDD88, &qword_1000C5B00);
  sub_100005334(&qword_1000EDD80, &qword_1000C5AF8);
  sub_100008478(&qword_1000EDDA8, &qword_1000EDD80, &qword_1000C5AF8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000483E0()
{
  result = qword_1000EDFE8;
  if (!qword_1000EDFE8)
  {
    sub_100005334(&qword_1000EDFC8, &qword_1000C5D20);
    sub_10004846C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDFE8);
  }

  return result;
}

unint64_t sub_10004846C()
{
  result = qword_1000EDFF0;
  if (!qword_1000EDFF0)
  {
    sub_100005334(&qword_1000EDFF8, &qword_1000C5D38);
    sub_100005334(&qword_1000EDFC0, &qword_1000C5D18);
    sub_100008478(&qword_1000EDFE0, &qword_1000EDFC0, &qword_1000C5D18);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDFF0);
  }

  return result;
}

unint64_t sub_1000485EC()
{
  result = qword_1000EE048;
  if (!qword_1000EE048)
  {
    sub_100005334(&qword_1000EE040, &qword_1000C5DB0);
    type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView(255);
    sub_100005334(&qword_1000EE010, &qword_1000C5D80);
    sub_100048784(&qword_1000EE050, type metadata accessor for TTRAnyListWidget.UrgentAlarmLargeHeaderView);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EE060, &qword_1000EE068, &qword_1000C5DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE048);
  }

  return result;
}

uint64_t sub_100048784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100048828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000489A0@<X0>(void *a1@<X8>)
{
  sub_100048A0C();
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_1000489F4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100048A00(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100048A0C()
{
  result = qword_1000EE098;
  if (!qword_1000EE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE098);
  }

  return result;
}

unint64_t sub_100048A60()
{
  result = qword_1000EE0A0;
  if (!qword_1000EE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0A0);
  }

  return result;
}

unint64_t sub_100048AB4()
{
  result = qword_1000EE0A8;
  if (!qword_1000EE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0A8);
  }

  return result;
}

unint64_t sub_100048B08()
{
  result = qword_1000EE0B8;
  if (!qword_1000EE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0B8);
  }

  return result;
}

unint64_t sub_100048BB0()
{
  result = qword_1000EE0D0;
  if (!qword_1000EE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE0D0);
  }

  return result;
}

char *sub_100048C54(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a2[1];
    *(a1 + 1) = v8;
    v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v41 = v9[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v8;
    if (v12(a2 + v41, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v7[v41], a2 + v41, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v41], a2 + v41, v10);
      (*(v11 + 56))(&v7[v41], 0, 1, v10);
    }

    v16 = v9[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v7[v16], a2 + v16, v17);
    v18 = v9[8];
    v19 = *(a2 + v18);
    *&v7[v18] = v19;
    *&v7[v9[9]] = *(a2 + v9[9]);
    v7[v9[10]] = *(a2 + v9[10]);
    v7[v9[11]] = *(a2 + v9[11]);
    v20 = a3[6];
    *&v7[a3[5]] = *(a2 + a3[5]);
    v21 = &v7[v20];
    v22 = a2 + v20;
    *v21 = *v22;
    v23 = a3[7];
    v24 = a3[8];
    v25 = *(a2 + v23);
    v21[8] = *(v22 + 8);
    v7[v23] = v25;
    v26 = &v7[v24];
    *v26 = *(a2 + v24);
    v26[16] = *(a2 + v24 + 16);
    v27 = a3[9];
    v28 = a3[10];
    v29 = &v7[v27];
    v30 = (a2 + v27);
    v31 = *v30;
    LOBYTE(v30) = *(v30 + 8);
    *v29 = v31;
    v29[8] = v30;
    v32 = &v7[v28];
    v33 = (a2 + v28);
    v34 = *v33;
    LOBYTE(v33) = *(v33 + 8);
    *v32 = v34;
    v32[8] = v33;
    v35 = a3[11];
    v36 = &v7[v35];
    v37 = (a2 + v35);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 8);
    *v36 = v38;
    v36[8] = v37;
    v39 = v19;
  }

  return v7;
}

uint64_t sub_100048F0C(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a1 + a2[9]);

  v11 = *(a1 + a2[10]);

  v12 = *(a1 + a2[11]);
}

char *sub_100049048(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  *&a1[a3[5]] = *(a2 + a3[5]);
  v20 = &a1[v19];
  v21 = a2 + v19;
  *v20 = *v21;
  v22 = a3[7];
  v23 = a3[8];
  v24 = *(a2 + v22);
  v20[8] = *(v21 + 8);
  a1[v22] = v24;
  v25 = &a1[v23];
  *v25 = *(a2 + v23);
  v25[16] = *(a2 + v23 + 16);
  v26 = a3[9];
  v27 = a3[10];
  v28 = &a1[v26];
  v29 = (a2 + v26);
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  *v28 = v30;
  v28[8] = v29;
  v31 = &a1[v27];
  v32 = (a2 + v27);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  *v31 = v33;
  v31[8] = v32;
  v34 = a3[11];
  v35 = &a1[v34];
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  v35[8] = v36;
  v38 = v18;

  return a1;
}

uint64_t sub_1000492B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  *(v27 + 8) = *(v28 + 8);
  *v27 = v29;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  *(v31 + 16) = *(v32 + 16);
  *v31 = v33;
  v34 = a3[9];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = *v35;
  *v35 = v37;
  *(v35 + 8) = v36;

  v39 = a3[10];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = *v40;
  *v40 = v42;
  *(v40 + 8) = v41;

  v44 = a3[11];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = *v45;
  *v45 = v47;
  *(v45 + 8) = v46;

  return a1;
}

char *sub_1000495B4(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  v18[16] = v19[16];
  v20 = a3[9];
  v21 = a3[10];
  v22 = &a1[v20];
  v23 = &a2[v20];
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = &a1[v21];
  v25 = &a2[v21];
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = a3[11];
  v27 = &a1[v26];
  v28 = &a2[v26];
  *v27 = *v28;
  v27[8] = v28[8];
  return a1;
}

uint64_t sub_1000497E8(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[6];
  *(a1 + a3[5]) = *&a2[a3[5]];
  v21 = a1 + v20;
  v22 = &a2[v20];
  *v21 = *v22;
  *(v21 + 8) = v22[8];
  v23 = a3[8];
  *(a1 + a3[7]) = a2[a3[7]];
  v24 = a1 + v23;
  v25 = &a2[v23];
  *v24 = *v25;
  *(v24 + 16) = v25[16];
  v26 = a3[9];
  v27 = (a1 + v26);
  v28 = &a2[v26];
  v29 = *v28;
  LOBYTE(v28) = v28[8];
  v30 = *v27;
  *v27 = v29;
  *(v27 + 8) = v28;

  v31 = a3[10];
  v32 = (a1 + v31);
  v33 = &a2[v31];
  v34 = *v33;
  LOBYTE(v33) = v33[8];
  v35 = *v32;
  *v32 = v34;
  *(v32 + 8) = v33;

  v36 = a3[11];
  v37 = (a1 + v36);
  v38 = &a2[v36];
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = *v37;
  *v37 = v39;
  *(v37 + 8) = v38;

  return a1;
}

uint64_t sub_100049AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100049BB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100049C68()
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1)
{
  sub_100048A00(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
}

uint64_t initializeWithCopy for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1000489F4(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1000489F4(v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_100048A00(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a1 + 32);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;

  return a1;
}

__n128 initializeWithTake for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_100048A00(v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.DottedDividerHorizontal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.DottedDividerHorizontal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

char *sub_100049F98(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = *(a3 + 20);
    v21 = sub_1000C0EF8();
    v22 = *(*(v21 - 8) + 16);
    v23 = v19;
    v22(&v6[v20], a2 + v20, v21);
    v24 = *(a3 + 24);
    v25 = sub_1000C0AF8();
    (*(*(v25 - 8) + 16))(&v6[v24], a2 + v24, v25);
  }

  return v6;
}

uint64_t sub_10004A228(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a2 + 20);
  v11 = sub_1000C0EF8();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = *(a2 + 24);
  v13 = sub_1000C0AF8();
  v14 = *(*(v13 - 8) + 8);

  return v14(a1 + v12, v13);
}

char *sub_10004A3B8(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = *(a3 + 20);
  v20 = sub_1000C0EF8();
  v21 = *(*(v20 - 8) + 16);
  v22 = v18;
  v21(&a1[v19], a2 + v19, v20);
  v23 = *(a3 + 24);
  v24 = sub_1000C0AF8();
  (*(*(v24 - 8) + 16))(&a1[v23], a2 + v23, v24);
  return a1;
}

uint64_t sub_10004A5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  v26 = *(a3 + 20);
  v27 = sub_1000C0EF8();
  (*(*(v27 - 8) + 24))(a1 + v26, a2 + v26, v27);
  v28 = *(a3 + 24);
  v29 = sub_1000C0AF8();
  (*(*(v29 - 8) + 24))(a1 + v28, a2 + v28, v29);
  return a1;
}

char *sub_10004A8A4(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = *(a3 + 20);
  v15 = sub_1000C0EF8();
  (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
  v16 = *(a3 + 24);
  v17 = sub_1000C0AF8();
  (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
  return a1;
}

uint64_t sub_10004AAC0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = *(a3 + 20);
  v21 = sub_1000C0EF8();
  (*(*(v21 - 8) + 40))(a1 + v20, &a2[v20], v21);
  v22 = *(a3 + 24);
  v23 = sub_1000C0AF8();
  (*(*(v23 - 8) + 40))(a1 + v22, &a2[v22], v23);
  return a1;
}

uint64_t sub_10004AD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000C0EF8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000C0AF8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10004AEC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000C0EF8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000C0AF8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10004B014()
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1000C0EF8();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1000C0AF8();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10004B11C()
{
  result = qword_1000EE230;
  if (!qword_1000EE230)
  {
    sub_100005334(&qword_1000EE000, &qword_1000C5D70);
    sub_100005334(&qword_1000EDFC8, &qword_1000C5D20);
    sub_1000483E0();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EE238, &qword_1000EE008, &qword_1000C5D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE230);
  }

  return result;
}

unint64_t sub_10004B214()
{
  result = qword_1000EE240;
  if (!qword_1000EE240)
  {
    sub_100005334(&qword_1000EE248, &qword_1000C6010);
    sub_10004B298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE240);
  }

  return result;
}

unint64_t sub_10004B298()
{
  result = qword_1000EE250;
  if (!qword_1000EE250)
  {
    sub_100005334(&qword_1000EE258, qword_1000C6018);
    _s10WidgetViewVMa_0();
    sub_100048784(&qword_1000EE0E8, _s10WidgetViewVMa_0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE250);
  }

  return result;
}

uint64_t sub_10004B3DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C1858();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004B434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C18A8();
  *a1 = result;
  return result;
}

uint64_t sub_10004B460(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C18B8();
}

unint64_t sub_10004B48C()
{
  result = qword_1000EE2B0;
  if (!qword_1000EE2B0)
  {
    sub_100005334(&qword_1000EE2A8, &qword_1000C62D0);
    sub_100008478(&qword_1000EE2B8, &qword_1000EE2C0, &qword_1000C62D8);
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2B0);
  }

  return result;
}

uint64_t sub_10004B570@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C1908();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004B5A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000C1918();
}

unint64_t sub_10004B5D4()
{
  result = qword_1000EE2C8;
  if (!qword_1000EE2C8)
  {
    sub_100005334(&qword_1000EE298, &qword_1000C6290);
    sub_100005334(&qword_1000EE290, &qword_1000C6288);
    sub_100005334(&qword_1000EE2A8, &qword_1000C62D0);
    sub_10004B48C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000ED640, &qword_1000ED648, &qword_1000C5330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2C8);
  }

  return result;
}

uint64_t sub_10004B70C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C1838();
  *a1 = result;
  return result;
}

uint64_t sub_10004B738(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000C1848();
}

unint64_t sub_10004B764()
{
  result = qword_1000EE2E0;
  if (!qword_1000EE2E0)
  {
    sub_100005334(&qword_1000EE2D8, &qword_1000C6358);
    sub_100008478(&qword_1000EE2E8, &qword_1000EE2F0, &qword_1000C6360);
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2E0);
  }

  return result;
}

uint64_t sub_10004B86C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10004B894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004B8AC()
{
  result = qword_1000EE350;
  if (!qword_1000EE350)
  {
    sub_100005334(&qword_1000EE348, &qword_1000C63B8);
    sub_100005334(&qword_1000EE338, &qword_1000C63A8);
    sub_100005334(&qword_1000EE330, &qword_1000C63A0);
    type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(255);
    sub_10004BA38();
    sub_100048784(&qword_1000EE368, type metadata accessor for TTRAnyListWidget.ReminderToggleStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE350);
  }

  return result;
}

unint64_t sub_10004BA38()
{
  result = qword_1000EE358;
  if (!qword_1000EE358)
  {
    sub_100005334(&qword_1000EE330, &qword_1000C63A0);
    sub_10004BAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE358);
  }

  return result;
}

unint64_t sub_10004BAC4()
{
  result = qword_1000EE360;
  if (!qword_1000EE360)
  {
    sub_100005334(&qword_1000EE328, &qword_1000C6398);
    sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE360);
  }

  return result;
}

unint64_t sub_10004BBD8()
{
  result = qword_1000EE390;
  if (!qword_1000EE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE390);
  }

  return result;
}

_OWORD *sub_10004BC2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10004BC3C()
{
  result = qword_1000EE3A0;
  if (!qword_1000EE3A0)
  {
    sub_100005334(&qword_1000EE3A8, &qword_1000C6448);
    sub_10004BCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3A0);
  }

  return result;
}

unint64_t sub_10004BCC0()
{
  result = qword_1000EE3B0;
  if (!qword_1000EE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3B0);
  }

  return result;
}

uint64_t sub_10004BD14()
{
  sub_100048A00(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t destroy for TTRAnyListWidget.ListBadge(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 32);
}

uint64_t initializeWithCopy for TTRAnyListWidget.ListBadge(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  LOBYTE(v4) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.ListBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a1 + 32);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;

  return a1;
}

uint64_t assignWithTake for TTRAnyListWidget.ListBadge(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.ListBadge(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.ListBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

char *sub_10004BFE4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a2[1];
    *(a1 + 1) = v8;
    v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v46 = v9[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v8;
    if (v12(a2 + v46, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v7[v46], a2 + v46, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v46], a2 + v46, v10);
      (*(v11 + 56))(&v7[v46], 0, 1, v10);
    }

    v16 = v9[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v7[v16], a2 + v16, v17);
    v18 = v9[8];
    v19 = *(a2 + v18);
    *&v7[v18] = v19;
    *&v7[v9[9]] = *(a2 + v9[9]);
    v7[v9[10]] = *(a2 + v9[10]);
    v7[v9[11]] = *(a2 + v9[11]);
    v20 = a3[6];
    *&v7[a3[5]] = *(a2 + a3[5]);
    v21 = &v7[v20];
    v22 = a2 + v20;
    *v21 = *v22;
    v21[8] = *(v22 + 8);
    v23 = a3[8];
    v7[a3[7]] = *(a2 + a3[7]);
    v24 = &v7[v23];
    v25 = a2 + v23;
    *v24 = *v25;
    v24[16] = *(v25 + 16);
    v26 = a3[9];
    v27 = a3[10];
    v28 = &v7[v26];
    v29 = (a2 + v26);
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 8);
    *v28 = v30;
    v28[8] = v29;
    v31 = &v7[v27];
    v32 = (a2 + v27);
    v33 = *v32;
    LOBYTE(v32) = *(v32 + 8);
    *v31 = v33;
    v31[8] = v32;
    v34 = a3[11];
    v35 = a3[12];
    v36 = &v7[v34];
    v37 = (a2 + v34);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 8);
    *v36 = v38;
    v36[8] = v37;
    v39 = &v7[v35];
    v40 = (a2 + v35);
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 8);
    *v39 = v41;
    v39[8] = v40;
    v42 = a3[13];
    v43 = v19;

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = sub_1000C2338();
      (*(*(v44 - 8) + 16))(&v7[v42], a2 + v42, v44);
    }

    else
    {
      *&v7[v42] = *(a2 + v42);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v7;
}

uint64_t sub_10004C35C(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a1 + a2[9]);

  v11 = *(a1 + a2[10]);

  v12 = *(a1 + a2[11]);

  v13 = *(a1 + a2[12]);

  v14 = a2[13];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000C2338();
    v16 = *(*(v15 - 8) + 8);

    return v16(a1 + v14, v15);
  }

  else
  {
    v18 = *(a1 + v14);
  }
}

char *sub_10004C530(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  *&a1[a3[5]] = *(a2 + a3[5]);
  v20 = &a1[v19];
  v21 = a2 + v19;
  *v20 = *v21;
  v20[8] = *(v21 + 8);
  v22 = a3[8];
  a1[a3[7]] = *(a2 + a3[7]);
  v23 = &a1[v22];
  v24 = a2 + v22;
  *v23 = *v24;
  v23[16] = *(v24 + 16);
  v25 = a3[9];
  v26 = a3[10];
  v27 = &a1[v25];
  v28 = (a2 + v25);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  *v27 = v29;
  v27[8] = v28;
  v30 = &a1[v26];
  v31 = (a2 + v26);
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  *v30 = v32;
  v30[8] = v31;
  v33 = a3[11];
  v34 = a3[12];
  v35 = &a1[v33];
  v36 = (a2 + v33);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  *v35 = v37;
  v35[8] = v36;
  v38 = &a1[v34];
  v39 = (a2 + v34);
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  *v38 = v40;
  v38[8] = v39;
  v41 = a3[13];
  v42 = v18;

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_1000C2338();
    (*(*(v43 - 8) + 16))(&a1[v41], a2 + v41, v43);
  }

  else
  {
    *&a1[v41] = *(a2 + v41);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10004C84C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    (*(v15 + 8))(a1 + v13, v14);
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 24))(a1 + v13, a2 + v13, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = (a2 + v26);
  v29 = *v28;
  *(v27 + 8) = *(v28 + 8);
  *v27 = v29;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = (a2 + v30);
  v33 = *v32;
  *(v31 + 16) = *(v32 + 16);
  *v31 = v33;
  v34 = a3[9];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = *v35;
  *v35 = v37;
  *(v35 + 8) = v36;

  v39 = a3[10];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = *v40;
  *v40 = v42;
  *(v40 + 8) = v41;

  v44 = a3[11];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = *v45;
  *v45 = v47;
  *(v45 + 8) = v46;

  v49 = a3[12];
  v50 = (a1 + v49);
  v51 = (a2 + v49);
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = *v50;
  *v50 = v52;
  *(v50 + 8) = v51;

  if (a1 != a2)
  {
    v54 = a3[13];
    sub_1000084C0(a1 + v54, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = sub_1000C2338();
      (*(*(v55 - 8) + 16))(a1 + v54, a2 + v54, v55);
    }

    else
    {
      *(a1 + v54) = *(a2 + v54);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_10004CC28(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  v18[16] = v19[16];
  v20 = a3[9];
  v21 = a3[10];
  v22 = &a1[v20];
  v23 = &a2[v20];
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = &a1[v21];
  v25 = &a2[v21];
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = a3[11];
  v27 = a3[12];
  v28 = &a1[v26];
  v29 = &a2[v26];
  *v28 = *v29;
  v28[8] = v29[8];
  v30 = &a1[v27];
  v31 = &a2[v27];
  v32 = *v31;
  v30[8] = v31[8];
  *v30 = v32;
  v33 = a3[13];
  v34 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_1000C2338();
    (*(*(v35 - 8) + 32))(&a1[v33], &a2[v33], v35);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v33], &a2[v33], *(*(v34 - 8) + 64));
  }

  return a1;
}

char *sub_10004CF14(char *a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(&a1[v9], 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    (*(v11 + 8))(&a1[v9], v10);
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v9], &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 40))(&a1[v9], &a2[v9], v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  v18 = v8[8];
  v19 = *&a1[v18];
  *&a1[v18] = *&a2[v18];

  *&a1[v8[9]] = *&a2[v8[9]];
  a1[v8[10]] = a2[v8[10]];
  a1[v8[11]] = a2[v8[11]];
  v20 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *v21 = *v22;
  v21[8] = v22[8];
  v23 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  v24 = &a1[v23];
  v25 = &a2[v23];
  *v24 = *v25;
  v24[16] = v25[16];
  v26 = a3[9];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v29 = *v28;
  LOBYTE(v28) = v28[8];
  v30 = *v27;
  *v27 = v29;
  v27[8] = v28;

  v31 = a3[10];
  v32 = &a1[v31];
  v33 = &a2[v31];
  v34 = *v33;
  LOBYTE(v33) = v33[8];
  v35 = *v32;
  *v32 = v34;
  v32[8] = v33;

  v36 = a3[11];
  v37 = &a1[v36];
  v38 = &a2[v36];
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = *v37;
  *v37 = v39;
  v37[8] = v38;

  v41 = a3[12];
  v42 = &a1[v41];
  v43 = &a2[v41];
  v44 = *v43;
  LOBYTE(v43) = v43[8];
  v45 = *v42;
  *v42 = v44;
  v42[8] = v43;

  if (a1 != a2)
  {
    v46 = a3[13];
    sub_1000084C0(&a1[v46], &qword_1000EDDC0, &qword_1000C5B60);
    v47 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v48 = sub_1000C2338();
      (*(*(v48 - 8) + 32))(&a1[v46], &a2[v46], v48);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v46], &a2[v46], *(*(v47 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10004D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v12 = *(*(IsVibrantText - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, IsVibrantText);
  }
}

uint64_t sub_10004D424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v12 = *(*(IsVibrantText - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, IsVibrantText);
  }

  return result;
}

void sub_10004D544()
{
  v0 = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

char *sub_10004D664(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    v25 = (v24 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v6 = &a1[v5];
    v7 = &a2[v5];
    v8 = *&a2[v5 + 8];
    *v6 = *&a2[v5];
    *(v6 + 1) = v8;
    *(v6 + 1) = *&a2[v5 + 16];
    *(v6 + 4) = *&a2[v5 + 32];
    v9 = type metadata accessor for TTRNewWidgetViewModel(0);
    v10 = v9[7];
    v11 = sub_1000C0E58();
    v12 = *(*(v11 - 8) + 16);

    v12(&v6[v10], &v7[v10], v11);
    v13 = v9[8];
    v14 = &v6[v13];
    v15 = &v7[v13];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    v17 = v9[9];
    v18 = &v6[v17];
    v19 = &v7[v17];
    v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v21 = *(v20 - 1);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v77 = v21;
      v26 = *v19;
      v27 = v19[1];
      *v18 = *v19;
      v18[1] = v27;
      v75 = v20[6];
      v28 = sub_1000C0818();
      v72 = *(v28 - 8);
      v73 = *(v72 + 48);
      v29 = v26;
      v30 = v27;
      if (v73(v19 + v75, 1, v28))
      {
        v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v18 + v75, v19 + v75, *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v72 + 16))(v18 + v75, v19 + v75, v28);
        (*(v72 + 56))(v18 + v75, 0, 1, v28);
      }

      v32 = v20[7];
      v33 = sub_1000C0938();
      (*(*(v33 - 8) + 16))(v18 + v32, v19 + v32, v33);
      v34 = v20[8];
      v35 = *(v19 + v34);
      *(v18 + v34) = v35;
      *(v18 + v20[9]) = *(v19 + v20[9]);
      *(v18 + v20[10]) = *(v19 + v20[10]);
      *(v18 + v20[11]) = *(v19 + v20[11]);
      v36 = *(v77 + 56);
      v37 = v35;
      v36(v18, 0, 1, v20);
    }

    v38 = v9[10];
    v78 = *&v7[v38];
    *&v6[v38] = v78;
    v39 = v9[11];
    v40 = &v6[v39];
    v41 = &v7[v39];
    v42 = *(v41 + 1);
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = v9[12];
    v76 = *&v7[v43];
    *&v6[v43] = v76;
    v44 = v9[13];
    v45 = &v6[v44];
    v46 = &v7[v44];
    v47 = *(v46 + 1);
    *v45 = *v46;
    *(v45 + 1) = v47;
    v48 = v9[14];
    v49 = &v6[v48];
    v50 = &v7[v48];
    v51 = *(v50 + 1);
    *v49 = *v50;
    *(v49 + 1) = v51;
    v6[v9[15]] = v7[v9[15]];
    v52 = v9[16];
    v53 = &v6[v52];
    v54 = &v7[v52];
    v55 = *(v54 + 1);
    *v53 = *v54;
    *(v53 + 1) = v55;
    *&v6[v9[17]] = *&v7[v9[17]];
    v56 = v9[18];
    v57 = sub_1000C0938();
    v74 = *(*(v57 - 8) + 16);
    v58 = v78;

    v59 = v76;

    v74(&v6[v56], &v7[v56], v57);
    *&v6[v9[19]] = *&v7[v9[19]];
    v6[v9[20]] = v7[v9[20]];
    v60 = a3[6];

    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = sub_1000C1778();
      v25 = a1;
      (*(*(v61 - 8) + 16))(&a1[v60], &a2[v60], v61);
    }

    else
    {
      v25 = a1;
      *&a1[v60] = *&a2[v60];
    }

    swift_storeEnumTagMultiPayload();
    v62 = a3[7];
    v63 = &v25[v62];
    v64 = &a2[v62];
    v65 = *v64;
    v66 = v64[8];
    sub_1000489F4(*v64, v66);
    *v63 = v65;
    v63[8] = v66;
    v67 = a3[8];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = sub_1000C2338();
      (*(*(v68 - 8) + 16))(&v25[v67], &a2[v67], v68);
    }

    else
    {
      *&v25[v67] = *&a2[v67];
    }

    swift_storeEnumTagMultiPayload();
    v69 = a3[9];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v70 = sub_1000C2338();
      (*(*(v70 - 8) + 16))(&v25[v69], &a2[v69], v70);
    }

    else
    {
      *&v25[v69] = *&a2[v69];
    }

    swift_storeEnumTagMultiPayload();
  }

  return v25;
}

uint64_t sub_10004DCD0(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];
  v5 = *(v4 + 8);

  v6 = *(v4 + 32);

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *(v4 + v7[8] + 8);

  v11 = (v4 + v7[9]);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {

    v13 = v12[6];
    v14 = sub_1000C0818();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11 + v13, 1, v14))
    {
      (*(v15 + 8))(v11 + v13, v14);
    }

    v16 = v12[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 8))(v11 + v16, v17);
  }

  v18 = *(v4 + v7[11] + 8);

  v19 = *(v4 + v7[13] + 8);

  v20 = *(v4 + v7[14] + 8);

  v21 = *(v4 + v7[16] + 8);

  v22 = *(v4 + v7[17]);

  v23 = v7[18];
  v24 = sub_1000C0938();
  (*(*(v24 - 8) + 8))(v4 + v23, v24);
  v25 = *(v4 + v7[19]);

  v26 = a2[6];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_1000C1778();
    (*(*(v27 - 8) + 8))(a1 + v26, v27);
  }

  else
  {
    v28 = *(a1 + v26);
  }

  sub_100048A00(*(a1 + a2[7]), *(a1 + a2[7] + 8));
  v29 = a2[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_1000C2338();
    (*(*(v30 - 8) + 8))(a1 + v29, v30);
  }

  else
  {
    v31 = *(a1 + v29);
  }

  v32 = a2[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_1000C2338();
    v34 = *(*(v33 - 8) + 8);

    return v34(a1 + v32, v33);
  }

  else
  {
    v36 = *(a1 + v32);
  }
}

_BYTE *sub_10004E0CC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 8];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;
  *(v4 + 1) = *&a2[v3 + 16];
  *(v4 + 4) = *&a2[v3 + 32];
  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  v10 = *(*(v9 - 8) + 16);

  v10(&v4[v8], &v5[v8], v9);
  v11 = v7[8];
  v12 = &v4[v11];
  v13 = &v5[v11];
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v7[9];
  v16 = &v4[v15];
  v17 = &v5[v15];
  v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);

  if (v20(v17, 1, v18))
  {
    v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v16, v17, *(*(v21 - 8) + 64));
  }

  else
  {
    v74 = v19;
    v22 = *v17;
    v23 = v17[1];
    *v16 = *v17;
    v16[1] = v23;
    v72 = v18[6];
    v24 = sub_1000C0818();
    v69 = *(v24 - 8);
    v70 = *(v69 + 48);
    v25 = v22;
    v26 = v23;
    if (v70(v17 + v72, 1, v24))
    {
      v27 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v16 + v72, v17 + v72, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v69 + 16))(v16 + v72, v17 + v72, v24);
      (*(v69 + 56))(v16 + v72, 0, 1, v24);
    }

    v28 = v18[7];
    v29 = sub_1000C0938();
    (*(*(v29 - 8) + 16))(v16 + v28, v17 + v28, v29);
    v30 = v18[8];
    v31 = *(v17 + v30);
    *(v16 + v30) = v31;
    *(v16 + v18[9]) = *(v17 + v18[9]);
    *(v16 + v18[10]) = *(v17 + v18[10]);
    *(v16 + v18[11]) = *(v17 + v18[11]);
    v32 = *(v74 + 56);
    v33 = v31;
    v32(v16, 0, 1, v18);
  }

  v34 = v7[10];
  v75 = *&v5[v34];
  *&v4[v34] = v75;
  v35 = v7[11];
  v36 = &v4[v35];
  v37 = &v5[v35];
  v38 = v37[1];
  *v36 = *v37;
  v36[1] = v38;
  v39 = v7[12];
  v73 = *&v5[v39];
  *&v4[v39] = v73;
  v40 = v7[13];
  v41 = &v4[v40];
  v42 = &v5[v40];
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = v7[14];
  v45 = &v4[v44];
  v46 = &v5[v44];
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v4[v7[15]] = v5[v7[15]];
  v48 = v7[16];
  v49 = &v4[v48];
  v50 = &v5[v48];
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *&v4[v7[17]] = *&v5[v7[17]];
  v52 = v7[18];
  v53 = sub_1000C0938();
  v71 = *(*(v53 - 8) + 16);
  v54 = v75;

  v55 = v73;

  v71(&v4[v52], &v5[v52], v53);
  *&v4[v7[19]] = *&v5[v7[19]];
  v4[v7[20]] = v5[v7[20]];
  v56 = a3[6];

  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = sub_1000C1778();
    v58 = a1;
    (*(*(v57 - 8) + 16))(&a1[v56], &a2[v56], v57);
  }

  else
  {
    v58 = a1;
    *&a1[v56] = *&a2[v56];
  }

  swift_storeEnumTagMultiPayload();
  v59 = a3[7];
  v60 = &v58[v59];
  v61 = &a2[v59];
  v62 = *v61;
  v63 = v61[8];
  sub_1000489F4(*v61, v63);
  *v60 = v62;
  v60[8] = v63;
  v64 = a3[8];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = sub_1000C2338();
    (*(*(v65 - 8) + 16))(&v58[v64], &a2[v64], v65);
  }

  else
  {
    *&v58[v64] = *&a2[v64];
  }

  swift_storeEnumTagMultiPayload();
  v66 = a3[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = sub_1000C2338();
    (*(*(v67 - 8) + 16))(&v58[v66], &a2[v66], v67);
  }

  else
  {
    *&v58[v66] = *&a2[v66];
  }

  swift_storeEnumTagMultiPayload();
  return v58;
}

_BYTE *sub_10004E6E0(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  *v4 = *&a2[v3];
  v6 = *&a1[v3 + 8];
  *(v4 + 1) = *&a2[v3 + 8];

  *(v4 + 2) = *(v5 + 2);
  *(v4 + 3) = *(v5 + 3);
  v7 = *(v4 + 4);
  *(v4 + 4) = *(v5 + 4);

  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = v8[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 24))(&v4[v9], &v5[v9], v10);
  v11 = v8[8];
  v12 = &v4[v11];
  v13 = &v5[v11];
  *v12 = *v13;
  v14 = *(v12 + 1);
  *(v12 + 1) = *(v13 + 1);

  v15 = v8[9];
  v16 = &v4[v15];
  v17 = &v5[v15];
  v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);
  v21 = v20(v16, 1, v18);
  v22 = v20(v17, 1, v18);
  if (!v21)
  {
    if (v22)
    {
      sub_100048940(v16, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v30 = *v17;
    v31 = *v16;
    *v16 = *v17;
    v32 = v30;

    v33 = *(v16 + 1);
    v34 = *(v17 + 1);
    *(v16 + 1) = v34;
    v35 = v34;

    v36 = v18[6];
    v37 = sub_1000C0818();
    v101 = *(v37 - 8);
    v38 = *(v101 + 48);
    v103 = v38(&v16[v36], 1, v37);
    v39 = v38(&v17[v36], 1, v37);
    if (v103)
    {
      if (!v39)
      {
        (*(v101 + 16))(&v16[v36], &v17[v36], v37);
        (*(v101 + 56))(&v16[v36], 0, 1, v37);
        goto LABEL_18;
      }

      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v16[v36];
      v42 = &v17[v36];
    }

    else
    {
      if (!v39)
      {
        (*(v101 + 24))(&v16[v36], &v17[v36], v37);
        goto LABEL_18;
      }

      (*(v101 + 8))(&v16[v36], v37);
      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v16[v36];
      v42 = &v17[v36];
    }

    memcpy(v41, v42, v40);
LABEL_18:
    v29 = a1;
    v49 = v18[7];
    v50 = sub_1000C0938();
    (*(*(v50 - 8) + 24))(&v16[v49], &v17[v49], v50);
    v51 = v18[8];
    v52 = *&v16[v51];
    v53 = *&v17[v51];
    *&v16[v51] = v53;
    v54 = v53;

    *&v16[v18[9]] = *&v17[v18[9]];
    v16[v18[10]] = v17[v18[10]];
    v16[v18[11]] = v17[v18[11]];
    goto LABEL_19;
  }

  if (v22)
  {
LABEL_7:
    v28 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v16, v17, *(*(v28 - 8) + 64));
    v29 = a1;
    goto LABEL_19;
  }

  v23 = *v17;
  *v16 = *v17;
  v104 = *(v17 + 1);
  *(v16 + 1) = v104;
  v102 = v18[6];
  v24 = sub_1000C0818();
  v99 = *(v24 - 8);
  v100 = *(v99 + 48);
  v25 = v23;
  v26 = v104;
  if (v100(&v17[v102], 1, v24))
  {
    v27 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v16[v102], &v17[v102], *(*(v27 - 8) + 64));
  }

  else
  {
    (*(v99 + 16))(&v16[v102], &v17[v102], v24);
    (*(v99 + 56))(&v16[v102], 0, 1, v24);
  }

  v29 = a1;
  v43 = v18[7];
  v44 = sub_1000C0938();
  (*(*(v44 - 8) + 16))(&v16[v43], &v17[v43], v44);
  v45 = v18[8];
  v46 = *&v17[v45];
  *&v16[v45] = v46;
  *&v16[v18[9]] = *&v17[v18[9]];
  v16[v18[10]] = v17[v18[10]];
  v16[v18[11]] = v17[v18[11]];
  v47 = *(v19 + 56);
  v48 = v46;
  v47(v16, 0, 1, v18);
LABEL_19:
  v55 = v8[10];
  v56 = *&v5[v55];
  v57 = *&v4[v55];
  *&v4[v55] = v56;
  v58 = v56;

  v59 = v8[11];
  v60 = &v4[v59];
  v61 = &v5[v59];
  *v60 = *v61;
  v62 = *(v60 + 1);
  *(v60 + 1) = *(v61 + 1);

  v63 = v8[12];
  v64 = *&v4[v63];
  v65 = *&v5[v63];
  *&v4[v63] = v65;
  v66 = v65;

  v67 = v8[13];
  v68 = &v4[v67];
  v69 = &v5[v67];
  *v68 = *v69;
  v70 = *(v68 + 1);
  *(v68 + 1) = *(v69 + 1);

  v71 = v8[14];
  v72 = &v4[v71];
  v73 = &v5[v71];
  *v72 = *v73;
  v74 = *(v72 + 1);
  *(v72 + 1) = *(v73 + 1);

  v4[v8[15]] = v5[v8[15]];
  v75 = v8[16];
  v76 = &v4[v75];
  v77 = &v5[v75];
  *v76 = *v77;
  v78 = *(v76 + 1);
  *(v76 + 1) = *(v77 + 1);

  v79 = v8[17];
  v80 = *&v4[v79];
  *&v4[v79] = *&v5[v79];

  v81 = v8[18];
  v82 = sub_1000C0938();
  (*(*(v82 - 8) + 24))(&v4[v81], &v5[v81], v82);
  v83 = v8[19];
  v84 = *&v4[v83];
  *&v4[v83] = *&v5[v83];

  v4[v8[20]] = v5[v8[20]];
  if (v29 != a2)
  {
    v85 = a3[6];
    sub_1000084C0(&v29[v85], &qword_1000EDDB8, &qword_1000C8030);
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v86 = sub_1000C1778();
      (*(*(v86 - 8) + 16))(&v29[v85], &a2[v85], v86);
    }

    else
    {
      *&v29[v85] = *&a2[v85];
    }

    swift_storeEnumTagMultiPayload();
  }

  v87 = a3[7];
  v88 = &v29[v87];
  v89 = &a2[v87];
  v90 = *v89;
  v91 = v89[8];
  sub_1000489F4(*v89, v91);
  v92 = *v88;
  v93 = v88[8];
  *v88 = v90;
  v88[8] = v91;
  sub_100048A00(v92, v93);
  if (v29 != a2)
  {
    v94 = a3[8];
    sub_1000084C0(&v29[v94], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v95 = sub_1000C2338();
      (*(*(v95 - 8) + 16))(&v29[v94], &a2[v94], v95);
    }

    else
    {
      *&v29[v94] = *&a2[v94];
    }

    swift_storeEnumTagMultiPayload();
    v96 = a3[9];
    sub_1000084C0(&v29[v96], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v97 = sub_1000C2338();
      (*(*(v97 - 8) + 16))(&v29[v96], &a2[v96], v97);
    }

    else
    {
      *&v29[v96] = *&a2[v96];
    }

    swift_storeEnumTagMultiPayload();
  }

  return v29;
}

_BYTE *sub_10004F060(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  v5 = a1;
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  *v7 = *&a2[v6];
  *(v7 + 2) = *&a2[v6 + 16];
  *(v7 + 24) = *&a2[v6 + 24];
  v9 = type metadata accessor for TTRNewWidgetViewModel(0);
  v10 = v9[7];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  *&v7[v9[8]] = *&v8[v9[8]];
  v12 = v9[9];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v16 = *(v15 - 1);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v39 = v5;
    v40 = v16;
    v41 = v3;
    v18 = v14[1];
    *v13 = *v14;
    v13[1] = v18;
    v19 = v15[6];
    v20 = sub_1000C0818();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14 + v19, 1, v20))
    {
      v22 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v13 + v19, v14 + v19, *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(v13 + v19, v14 + v19, v20);
      (*(v21 + 56))(v13 + v19, 0, 1, v20);
    }

    v23 = v15[7];
    v24 = sub_1000C0938();
    (*(*(v24 - 8) + 32))(v13 + v23, v14 + v23, v24);
    *(v13 + v15[8]) = *(v14 + v15[8]);
    *(v13 + v15[9]) = *(v14 + v15[9]);
    *(v13 + v15[10]) = *(v14 + v15[10]);
    *(v13 + v15[11]) = *(v14 + v15[11]);
    (*(v40 + 56))(v13, 0, 1, v15);
    v3 = v41;
    v5 = v39;
  }

  *&v7[v9[10]] = *&v8[v9[10]];
  *&v7[v9[11]] = *&v8[v9[11]];
  *&v7[v9[12]] = *&v8[v9[12]];
  *&v7[v9[13]] = *&v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  v7[v9[15]] = v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  v25 = v9[18];
  v26 = sub_1000C0938();
  (*(*(v26 - 8) + 32))(&v7[v25], &v8[v25], v26);
  *&v7[v9[19]] = *&v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v27 = v3[6];
  v28 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1000C1778();
    (*(*(v29 - 8) + 32))(&v5[v27], &a2[v27], v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&v5[v27], &a2[v27], *(*(v28 - 8) + 64));
  }

  v30 = v3[7];
  v31 = v3[8];
  v32 = &v5[v30];
  v33 = &a2[v30];
  *v32 = *v33;
  v32[8] = v33[8];
  v34 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_1000C2338();
    (*(*(v35 - 8) + 32))(&v5[v31], &a2[v31], v35);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&v5[v31], &a2[v31], *(*(v34 - 8) + 64));
  }

  v36 = v3[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_1000C2338();
    (*(*(v37 - 8) + 32))(&v5[v36], &a2[v36], v37);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&v5[v36], &a2[v36], *(*(v34 - 8) + 64));
  }

  return v5;
}

_BYTE *sub_10004F5FC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 8];
  v7 = *&a1[v3 + 8];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;

  *(v4 + 1) = *(v5 + 1);
  v8 = *(v4 + 4);
  *(v4 + 4) = *(v5 + 4);

  v9 = type metadata accessor for TTRNewWidgetViewModel(0);
  v10 = v9[7];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 40))(&v4[v10], &v5[v10], v11);
  v12 = v9[8];
  v13 = &v4[v12];
  v14 = &v5[v12];
  v16 = *v14;
  v15 = v14[1];
  v17 = v13[1];
  *v13 = v16;
  v13[1] = v15;

  v18 = v9[9];
  v19 = &v4[v18];
  v20 = &v5[v18];
  v21 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 48);
  v24 = v23(v19, 1, v21);
  v25 = v23(v20, 1, v21);
  if (!v24)
  {
    if (v25)
    {
      sub_100048940(v19, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v32 = *v19;
    *v19 = *v20;

    v33 = *(v19 + 1);
    *(v19 + 1) = *(v20 + 1);

    v34 = v21[6];
    v35 = sub_1000C0818();
    v97 = *(v35 - 8);
    v36 = *(v97 + 48);
    v98 = v36(&v19[v34], 1, v35);
    v37 = v36(&v20[v34], 1, v35);
    if (v98)
    {
      if (!v37)
      {
        (*(v97 + 32))(&v19[v34], &v20[v34], v35);
        (*(v97 + 56))(&v19[v34], 0, 1, v35);
        goto LABEL_18;
      }

      v38 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v39 = &v19[v34];
      v40 = &v20[v34];
    }

    else
    {
      if (!v37)
      {
        (*(v97 + 40))(&v19[v34], &v20[v34], v35);
        goto LABEL_18;
      }

      (*(v97 + 8))(&v19[v34], v35);
      v38 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v39 = &v19[v34];
      v40 = &v20[v34];
    }

    memcpy(v39, v40, v38);
LABEL_18:
    v43 = v21[7];
    v44 = sub_1000C0938();
    (*(*(v44 - 8) + 40))(&v19[v43], &v20[v43], v44);
    v45 = v21[8];
    v46 = *&v19[v45];
    *&v19[v45] = *&v20[v45];

    *&v19[v21[9]] = *&v20[v21[9]];
    v19[v21[10]] = v20[v21[10]];
    v19[v21[11]] = v20[v21[11]];
    goto LABEL_19;
  }

  if (v25)
  {
LABEL_7:
    v31 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v19, v20, *(*(v31 - 8) + 64));
    goto LABEL_19;
  }

  v26 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v26;
  v27 = v21[6];
  v28 = sub_1000C0818();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(&v20[v27], 1, v28))
  {
    v30 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v19[v27], &v20[v27], *(*(v30 - 8) + 64));
  }

  else
  {
    (*(v29 + 32))(&v19[v27], &v20[v27], v28);
    (*(v29 + 56))(&v19[v27], 0, 1, v28);
  }

  v41 = v21[7];
  v42 = sub_1000C0938();
  (*(*(v42 - 8) + 32))(&v19[v41], &v20[v41], v42);
  *&v19[v21[8]] = *&v20[v21[8]];
  *&v19[v21[9]] = *&v20[v21[9]];
  v19[v21[10]] = v20[v21[10]];
  v19[v21[11]] = v20[v21[11]];
  (*(v22 + 56))(v19, 0, 1, v21);
LABEL_19:
  v47 = v9[10];
  v48 = *&v4[v47];
  *&v4[v47] = *&v5[v47];

  v49 = v9[11];
  v50 = &v4[v49];
  v51 = &v5[v49];
  v53 = *v51;
  v52 = v51[1];
  v54 = v50[1];
  *v50 = v53;
  v50[1] = v52;

  v55 = v9[12];
  v56 = *&v4[v55];
  *&v4[v55] = *&v5[v55];

  v57 = v9[13];
  v58 = &v4[v57];
  v59 = &v5[v57];
  v61 = *v59;
  v60 = v59[1];
  v62 = v58[1];
  *v58 = v61;
  v58[1] = v60;

  v63 = v9[14];
  v64 = &v4[v63];
  v65 = &v5[v63];
  v67 = *v65;
  v66 = v65[1];
  v68 = v64[1];
  *v64 = v67;
  v64[1] = v66;

  v4[v9[15]] = v5[v9[15]];
  v69 = v9[16];
  v70 = &v4[v69];
  v71 = &v5[v69];
  v73 = *v71;
  v72 = v71[1];
  v74 = v70[1];
  *v70 = v73;
  v70[1] = v72;

  v75 = v9[17];
  v76 = *&v4[v75];
  *&v4[v75] = *&v5[v75];

  v77 = v9[18];
  v78 = sub_1000C0938();
  (*(*(v78 - 8) + 40))(&v4[v77], &v5[v77], v78);
  v79 = v9[19];
  v80 = *&v4[v79];
  *&v4[v79] = *&v5[v79];

  v4[v9[20]] = v5[v9[20]];
  if (a1 != a2)
  {
    v81 = a3[6];
    sub_1000084C0(&a1[v81], &qword_1000EDDB8, &qword_1000C8030);
    v82 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v83 = sub_1000C1778();
      (*(*(v83 - 8) + 32))(&a1[v81], &a2[v81], v83);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v81], &a2[v81], *(*(v82 - 8) + 64));
    }
  }

  v84 = a3[7];
  v85 = &a1[v84];
  v86 = &a2[v84];
  v87 = *v86;
  LOBYTE(v86) = v86[8];
  v88 = *v85;
  v89 = v85[8];
  *v85 = v87;
  v85[8] = v86;
  sub_100048A00(v88, v89);
  if (a1 != a2)
  {
    v90 = a3[8];
    sub_1000084C0(&a1[v90], &qword_1000EDDC0, &qword_1000C5B60);
    v91 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v92 = sub_1000C2338();
      (*(*(v92 - 8) + 32))(&a1[v90], &a2[v90], v92);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v90], &a2[v90], *(*(v91 - 8) + 64));
    }

    v93 = a3[9];
    sub_1000084C0(&a1[v93], &qword_1000EDDC0, &qword_1000C5B60);
    v94 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v95 = sub_1000C2338();
      (*(*(v95 - 8) + 32))(&a1[v93], &a2[v93], v95);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v93], &a2[v93], *(*(v94 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10004FEF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 > 1)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v14 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  IsVibrantText = type metadata accessor for IsVibrantText(0);
  v16 = *(*(IsVibrantText - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, IsVibrantText);
}

uint64_t sub_1000500D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
    return result;
  }

  v14 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_5;
  }

  IsVibrantText = type metadata accessor for IsVibrantText(0);
  v16 = *(*(IsVibrantText - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, IsVibrantText);
}

void sub_1000502C0()
{
  v0 = type metadata accessor for TTRNewWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10005435C(319, &qword_1000EDE40, &type metadata accessor for RedactionReasons);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

unint64_t sub_100050458()
{
  result = qword_1000EE528;
  if (!qword_1000EE528)
  {
    sub_100005334(&qword_1000EE530, &qword_1000C64E8);
    sub_10004B8AC();
    sub_10001C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE528);
  }

  return result;
}

unint64_t sub_1000504E8()
{
  result = qword_1000EE538;
  if (!qword_1000EE538)
  {
    sub_100005334(&qword_1000EE540, &qword_1000C64F0);
    sub_100050574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE538);
  }

  return result;
}

unint64_t sub_100050574()
{
  result = qword_1000EE548;
  if (!qword_1000EE548)
  {
    sub_100005334(&qword_1000EE550, &qword_1000C64F8);
    sub_100050600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE548);
  }

  return result;
}

unint64_t sub_100050600()
{
  result = qword_1000EE558;
  if (!qword_1000EE558)
  {
    sub_100005334(&qword_1000EE560, &qword_1000C6500);
    sub_100008478(&qword_1000EE568, &qword_1000EE570, qword_1000C6508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE558);
  }

  return result;
}

unint64_t sub_100050788()
{
  result = qword_1000EE590;
  if (!qword_1000EE590)
  {
    sub_100005334(&qword_1000EE588, &qword_1000C6658);
    sub_100050814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE590);
  }

  return result;
}

unint64_t sub_100050814()
{
  result = qword_1000EE598;
  if (!qword_1000EE598)
  {
    sub_100005334(&qword_1000EE5A0, &qword_1000C6660);
    sub_100008478(&qword_1000EE5A8, &qword_1000EE5B0, &qword_1000C6668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE598);
  }

  return result;
}

unint64_t sub_1000508DC()
{
  result = qword_1000EE610;
  if (!qword_1000EE610)
  {
    sub_100005334(&qword_1000EE5D8, &qword_1000C6690);
    sub_100008478(&qword_1000EE618, &qword_1000EE5E0, &qword_1000C6698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE610);
  }

  return result;
}

unint64_t sub_1000509F0()
{
  result = qword_1000EE630;
  if (!qword_1000EE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE630);
  }

  return result;
}

unint64_t sub_100050A44()
{
  result = qword_1000EE660;
  if (!qword_1000EE660)
  {
    sub_100005334(&qword_1000EE638, &qword_1000C6708);
    sub_100050AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE660);
  }

  return result;
}

unint64_t sub_100050AC8()
{
  result = qword_1000EE668;
  if (!qword_1000EE668)
  {
    sub_100005334(&qword_1000EE670, &qword_1000C6730);
    sub_100050B84();
    sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE668);
  }

  return result;
}

unint64_t sub_100050B84()
{
  result = qword_1000EE678;
  if (!qword_1000EE678)
  {
    sub_100005334(&qword_1000EE680, &qword_1000C6738);
    sub_100048784(&qword_1000EE688, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
    sub_100048784(&qword_1000EE690, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE678);
  }

  return result;
}

unint64_t sub_100050CD0()
{
  result = qword_1000EE6A0;
  if (!qword_1000EE6A0)
  {
    sub_100005334(&qword_1000EE658, &qword_1000C6728);
    sub_100008478(&qword_1000EE6A8, &qword_1000EE6B0, &qword_1000C6740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6A0);
  }

  return result;
}

unint64_t sub_100050DDC()
{
  result = qword_1000EE6C0;
  if (!qword_1000EE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6C0);
  }

  return result;
}

uint64_t sub_100050E94@<X0>(void *a1@<X8>)
{
  result = sub_1000C18F8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100050EC4@<X0>(void *a1@<X8>)
{
  result = sub_1000C17F8();
  *a1 = v3;
  return result;
}

unint64_t sub_100050F34()
{
  result = qword_1000EE718;
  if (!qword_1000EE718)
  {
    sub_100005334(&qword_1000EE6E0, &qword_1000C6848);
    sub_100050FEC();
    sub_100008478(&qword_1000EE740, &qword_1000EE708, &qword_1000C6870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE718);
  }

  return result;
}

unint64_t sub_100050FEC()
{
  result = qword_1000EE720;
  if (!qword_1000EE720)
  {
    sub_100005334(&qword_1000EE728, &qword_1000C6878);
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
    sub_100008478(&qword_1000EE730, &qword_1000EE738, &qword_1000C6880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE720);
  }

  return result;
}

uint64_t sub_1000510F4(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    v7 = a2[3];
    v8 = *(a2 + 32);
    j__swift_retain();
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    v9 = a3[9];
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1000C2338();
      (*(*(v10 - 8) + 16))(v4 + v9, a2 + v9, v10);
    }

    else
    {
      *(v4 + v9) = *(a2 + v9);
    }

    swift_storeEnumTagMultiPayload();
    v12 = a3[10];
    v13 = a3[11];
    v14 = v4 + v12;
    v15 = (a2 + v12);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *v14 = v16;
    *(v14 + 8) = v15;

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_1000C2338();
      (*(*(v17 - 8) + 16))(v4 + v13, a2 + v13, v17);
    }

    else
    {
      *(v4 + v13) = *(a2 + v13);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

uint64_t sub_1000512D4(uint64_t a1, int *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  j__swift_release();
  v6 = a2[9];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C2338();
    (*(*(v7 - 8) + 8))(a1 + v6, v7);
  }

  else
  {
    v8 = *(a1 + v6);
  }

  v9 = *(a1 + a2[10]);

  v10 = a2[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000C2338();
    v12 = *(*(v11 - 8) + 8);

    return v12(a1 + v10, v11);
  }

  else
  {
    v14 = *(a1 + v10);
  }
}

uint64_t sub_100051410(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  j__swift_retain();
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = a3[9];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000C2338();
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  }

  else
  {
    *(a1 + v8) = *(a2 + v8);
  }

  swift_storeEnumTagMultiPayload();
  v10 = a3[10];
  v11 = a3[11];
  v12 = a1 + v10;
  v13 = (a2 + v10);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *v12 = v14;
  *(v12 + 8) = v13;

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000C2338();
    (*(*(v15 - 8) + 16))(a1 + v11, a2 + v11, v15);
  }

  else
  {
    *(a1 + v11) = *(a2 + v11);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10005159C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  j__swift_retain();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  j__swift_release();
  if (a1 != a2)
  {
    v10 = a3[9];
    sub_1000084C0(a1 + v10, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1000C2338();
      (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
    }

    else
    {
      *(a1 + v10) = *(a2 + v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  v12 = a3[10];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v16 = *v13;
  *v13 = v15;
  *(v13 + 8) = v14;

  if (a1 != a2)
  {
    v17 = a3[11];
    sub_1000084C0(a1 + v17, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_1000C2338();
      (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
    }

    else
    {
      *(a1 + v17) = *(a2 + v17);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1000517AC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[9];
  v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C2338();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  v9 = a3[10];
  v10 = a3[11];
  v11 = a1 + v9;
  v12 = a2 + v9;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000C2338();
    (*(*(v13 - 8) + 32))(a1 + v10, a2 + v10, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(*(v7 - 8) + 64));
  }

  return a1;
}

uint64_t sub_10005194C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  j__swift_release();
  if (a1 != a2)
  {
    v10 = a3[9];
    sub_1000084C0(a1 + v10, &qword_1000EDDC0, &qword_1000C5B60);
    v11 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_1000C2338();
      (*(*(v12 - 8) + 32))(a1 + v10, a2 + v10, v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
    }
  }

  v13 = a3[10];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *v14;
  *v14 = v16;
  *(v14 + 8) = v15;

  if (a1 != a2)
  {
    v18 = a3[11];
    sub_1000084C0(a1 + v18, &qword_1000EDDC0, &qword_1000C5B60);
    v19 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = sub_1000C2338();
      (*(*(v20 - 8) + 32))(a1 + v18, a2 + v18, v20);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v18), (a2 + v18), *(*(v19 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_100051B74(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 36)];

      return v13(v14, a2, v12);
    }

    else
    {
      IsVibrantText = type metadata accessor for IsVibrantText(0);
      v16 = *(*(IsVibrantText - 8) + 48);
      v17 = &a1[*(a3 + 44)];

      return v16(v17, a2, IsVibrantText);
    }
  }
}

_BYTE *sub_100051CB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 36)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      IsVibrantText = type metadata accessor for IsVibrantText(0);
      v14 = *(*(IsVibrantText - 8) + 56);
      v15 = &v5[*(a4 + 44)];

      return v14(v15, a2, a2, IsVibrantText);
    }
  }

  return result;
}

void sub_100051DE4()
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

char *sub_100051EE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = a1;
  v8 = *(*(a3 - 8) + 80);
  if ((v8 & 0x20000) != 0)
  {
    v25 = *a2;
    *v7 = *a2;
    v7 = (v25 + ((v8 + 16) & ~v8));
  }

  else
  {
    v9 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v9;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v10 = type metadata accessor for TTRNewWidgetViewModel(0);
    v11 = v10[7];
    v12 = sub_1000C0E58();
    v13 = *(*(v12 - 8) + 16);

    v13(&v7[v11], a2 + v11, v12);
    v14 = v10[8];
    v15 = &v7[v14];
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    *(v15 + 1) = v17;
    v18 = v10[9];
    v19 = &v7[v18];
    v20 = (a2 + v18);
    v21 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v22 = *(v21 - 1);
    v23 = *(v22 + 48);

    if (v23(v20, 1, v21))
    {
      v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v19, v20, *(*(v24 - 8) + 64));
    }

    else
    {
      v69 = v22;
      v26 = *v20;
      v27 = v20[1];
      *v19 = *v20;
      v19[1] = v27;
      v67 = v21[6];
      v28 = sub_1000C0818();
      v64 = *(v28 - 8);
      v65 = *(v64 + 48);
      v29 = v26;
      v30 = v27;
      if (v65(v20 + v67, 1, v28))
      {
        v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v19 + v67, v20 + v67, *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v64 + 16))(v19 + v67, v20 + v67, v28);
        (*(v64 + 56))(v19 + v67, 0, 1, v28);
      }

      v32 = v21[7];
      v33 = sub_1000C0938();
      (*(*(v33 - 8) + 16))(v19 + v32, v20 + v32, v33);
      v34 = v21[8];
      v35 = *(v20 + v34);
      *(v19 + v34) = v35;
      *(v19 + v21[9]) = *(v20 + v21[9]);
      *(v19 + v21[10]) = *(v20 + v21[10]);
      *(v19 + v21[11]) = *(v20 + v21[11]);
      v36 = *(v69 + 56);
      v37 = v35;
      v36(v19, 0, 1, v21);
    }

    v38 = v10[10];
    v70 = *(a2 + v38);
    *&v7[v38] = v70;
    v39 = v10[11];
    v40 = &v7[v39];
    v41 = (a2 + v39);
    v42 = v41[1];
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = v10[12];
    v68 = *(a2 + v43);
    *&v7[v43] = v68;
    v44 = v10[13];
    v45 = &v7[v44];
    v46 = (a2 + v44);
    v47 = v46[1];
    *v45 = *v46;
    *(v45 + 1) = v47;
    v48 = v10[14];
    v49 = &v7[v48];
    v50 = (a2 + v48);
    v51 = v50[1];
    *v49 = *v50;
    *(v49 + 1) = v51;
    v7[v10[15]] = *(a2 + v10[15]);
    v52 = v10[16];
    v53 = &v7[v52];
    v54 = (a2 + v52);
    v55 = v54[1];
    *v53 = *v54;
    *(v53 + 1) = v55;
    *&v7[v10[17]] = *(a2 + v10[17]);
    v56 = v10[18];
    v57 = sub_1000C0938();
    v66 = *(*(v57 - 8) + 16);
    v58 = v70;

    v59 = v68;

    v66(&v7[v56], a2 + v56, v57);
    *&v7[v10[19]] = *(a2 + v10[19]);
    v7[v10[20]] = *(a2 + v10[20]);
    v60 = *(a3 + 20);

    sub_100004D04(a4, a5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = a6(0);
      (*(*(v61 - 8) + 16))(&v7[v60], a2 + v60, v61);
    }

    else
    {
      *&v7[v60] = *(a2 + v60);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v7;
}

uint64_t sub_100052428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *(a1 + 8);

  v11 = *(a1 + 32);

  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = v12[7];
  v14 = sub_1000C0E58();
  (*(*(v14 - 8) + 8))(a1 + v13, v14);
  v15 = *(a1 + v12[8] + 8);

  v16 = (a1 + v12[9]);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v36 = a5;

    v18 = v17[6];
    v19 = sub_1000C0818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v16 + v18, 1, v19))
    {
      (*(v20 + 8))(v16 + v18, v19);
    }

    v21 = v17[7];
    v22 = sub_1000C0938();
    (*(*(v22 - 8) + 8))(v16 + v21, v22);

    a5 = v36;
  }

  v23 = *(a1 + v12[11] + 8);

  v24 = *(a1 + v12[13] + 8);

  v25 = *(a1 + v12[14] + 8);

  v26 = *(a1 + v12[16] + 8);

  v27 = *(a1 + v12[17]);

  v28 = v12[18];
  v29 = sub_1000C0938();
  (*(*(v29 - 8) + 8))(a1 + v28, v29);
  v30 = *(a1 + v12[19]);

  v31 = *(a2 + 20);
  sub_100004D04(a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = a5(0);
    v33 = *(*(v32 - 8) + 8);

    return v33(a1 + v31, v32);
  }

  else
  {
    v35 = *(a1 + v31);
  }
}

uint64_t sub_10005277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v8 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v9 = type metadata accessor for TTRNewWidgetViewModel(0);
  v10 = v9[7];
  v11 = sub_1000C0E58();
  v12 = *(*(v11 - 8) + 16);

  v12(a1 + v10, a2 + v10, v11);
  v13 = v9[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = v9[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);

  if (v22(v19, 1, v20))
  {
    v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v18, v19, *(*(v23 - 8) + 64));
  }

  else
  {
    v67 = v21;
    v24 = *v19;
    v25 = v19[1];
    *v18 = *v19;
    v18[1] = v25;
    v65 = v20[6];
    v26 = sub_1000C0818();
    v62 = *(v26 - 8);
    v63 = *(v62 + 48);
    v27 = v24;
    v28 = v25;
    if (v63(v19 + v65, 1, v26))
    {
      v29 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v18 + v65, v19 + v65, *(*(v29 - 8) + 64));
    }

    else
    {
      (*(v62 + 16))(v18 + v65, v19 + v65, v26);
      (*(v62 + 56))(v18 + v65, 0, 1, v26);
    }

    v30 = v20[7];
    v31 = sub_1000C0938();
    (*(*(v31 - 8) + 16))(v18 + v30, v19 + v30, v31);
    v32 = v20[8];
    v33 = *(v19 + v32);
    *(v18 + v32) = v33;
    *(v18 + v20[9]) = *(v19 + v20[9]);
    *(v18 + v20[10]) = *(v19 + v20[10]);
    *(v18 + v20[11]) = *(v19 + v20[11]);
    v34 = *(v67 + 56);
    v35 = v33;
    v34(v18, 0, 1, v20);
  }

  v36 = v9[10];
  v68 = *(a2 + v36);
  *(a1 + v36) = v68;
  v37 = v9[11];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  v41 = v9[12];
  v66 = *(a2 + v41);
  *(a1 + v41) = v66;
  v42 = v9[13];
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  v45 = v44[1];
  *v43 = *v44;
  v43[1] = v45;
  v46 = v9[14];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = v48[1];
  *v47 = *v48;
  v47[1] = v49;
  *(a1 + v9[15]) = *(a2 + v9[15]);
  v50 = v9[16];
  v51 = (a1 + v50);
  v52 = (a2 + v50);
  v53 = v52[1];
  *v51 = *v52;
  v51[1] = v53;
  *(a1 + v9[17]) = *(a2 + v9[17]);
  v54 = v9[18];
  v55 = sub_1000C0938();
  v64 = *(*(v55 - 8) + 16);
  v56 = v68;

  v57 = v66;

  v64(a1 + v54, a2 + v54, v55);
  *(a1 + v9[19]) = *(a2 + v9[19]);
  *(a1 + v9[20]) = *(a2 + v9[20]);
  v58 = *(a3 + 20);

  sub_100004D04(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = a6(0);
    (*(*(v59 - 8) + 16))(a1 + v58, a2 + v58, v59);
  }

  else
  {
    *(a1 + v58) = *(a2 + v58);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100052C70(char *a1, char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  *a1 = *a2;
  v8 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v9 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);

  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 24))(&a1[v11], &a2[v11], v12);
  v13 = v10[8];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = *(v14 + 1);
  *(v14 + 1) = *(v15 + 1);

  v17 = v10[9];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);
  LODWORD(v16) = v22(v18, 1, v20);
  v23 = v22(v19, 1, v20);
  if (!v16)
  {
    if (v23)
    {
      sub_100048940(v18, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v30 = *v19;
    v31 = *v18;
    *v18 = *v19;
    v32 = v30;

    v33 = *(v18 + 1);
    v34 = *(v19 + 1);
    *(v18 + 1) = v34;
    v35 = v34;

    v36 = v20[6];
    v37 = sub_1000C0818();
    v89 = *(v37 - 8);
    v38 = *(v89 + 48);
    v92 = v38(&v18[v36], 1, v37);
    v39 = v38(&v19[v36], 1, v37);
    if (v92)
    {
      if (!v39)
      {
        (*(v89 + 16))(&v18[v36], &v19[v36], v37);
        (*(v89 + 56))(&v18[v36], 0, 1, v37);
        goto LABEL_18;
      }

      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v18[v36];
      v42 = &v19[v36];
    }

    else
    {
      if (!v39)
      {
        (*(v89 + 24))(&v18[v36], &v19[v36], v37);
        goto LABEL_18;
      }

      (*(v89 + 8))(&v18[v36], v37);
      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v18[v36];
      v42 = &v19[v36];
    }

    memcpy(v41, v42, v40);
LABEL_18:
    v49 = v20[7];
    v50 = sub_1000C0938();
    (*(*(v50 - 8) + 24))(&v18[v49], &v19[v49], v50);
    v51 = v20[8];
    v52 = *&v18[v51];
    v53 = *&v19[v51];
    *&v18[v51] = v53;
    v54 = v53;

    *&v18[v20[9]] = *&v19[v20[9]];
    v18[v20[10]] = v19[v20[10]];
    v18[v20[11]] = v19[v20[11]];
    goto LABEL_19;
  }

  if (v23)
  {
LABEL_7:
    v29 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v18, v19, *(*(v29 - 8) + 64));
    goto LABEL_19;
  }

  v24 = *v19;
  *v18 = *v19;
  v91 = *(v19 + 1);
  *(v18 + 1) = v91;
  v93 = v20[6];
  v25 = sub_1000C0818();
  v88 = *(v25 - 8);
  v90 = *(v88 + 48);
  v26 = v24;
  v27 = v91;
  if (v90(&v19[v93], 1, v25))
  {
    v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v18[v93], &v19[v93], *(*(v28 - 8) + 64));
  }

  else
  {
    (*(v88 + 16))(&v18[v93], &v19[v93], v25);
    (*(v88 + 56))(&v18[v93], 0, 1, v25);
  }

  v43 = v20[7];
  v44 = sub_1000C0938();
  (*(*(v44 - 8) + 16))(&v18[v43], &v19[v43], v44);
  v45 = v20[8];
  v46 = *&v19[v45];
  *&v18[v45] = v46;
  *&v18[v20[9]] = *&v19[v20[9]];
  v18[v20[10]] = v19[v20[10]];
  v18[v20[11]] = v19[v20[11]];
  v47 = *(v21 + 56);
  v48 = v46;
  v47(v18, 0, 1, v20);
LABEL_19:
  v55 = v10[10];
  v56 = *&a2[v55];
  v57 = *&a1[v55];
  *&a1[v55] = v56;
  v58 = v56;

  v59 = v10[11];
  v60 = &a1[v59];
  v61 = &a2[v59];
  *v60 = *v61;
  v62 = *(v60 + 1);
  *(v60 + 1) = *(v61 + 1);

  v63 = v10[12];
  v64 = *&a1[v63];
  v65 = *&a2[v63];
  *&a1[v63] = v65;
  v66 = v65;

  v67 = v10[13];
  v68 = &a1[v67];
  v69 = &a2[v67];
  *v68 = *v69;
  v70 = *(v68 + 1);
  *(v68 + 1) = *(v69 + 1);

  v71 = v10[14];
  v72 = &a1[v71];
  v73 = &a2[v71];
  *v72 = *v73;
  v74 = *(v72 + 1);
  *(v72 + 1) = *(v73 + 1);

  a1[v10[15]] = a2[v10[15]];
  v75 = v10[16];
  v76 = &a1[v75];
  v77 = &a2[v75];
  *v76 = *v77;
  v78 = *(v76 + 1);
  *(v76 + 1) = *(v77 + 1);

  v79 = v10[17];
  v80 = *&a1[v79];
  *&a1[v79] = *&a2[v79];

  v81 = v10[18];
  v82 = sub_1000C0938();
  (*(*(v82 - 8) + 24))(&a1[v81], &a2[v81], v82);
  v83 = v10[19];
  v84 = *&a1[v83];
  *&a1[v83] = *&a2[v83];

  a1[v10[20]] = a2[v10[20]];
  if (a1 != a2)
  {
    v85 = *(a3 + 20);
    sub_1000084C0(&a1[v85], a4, a5);
    sub_100004D04(a4, a5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v86 = a6(0);
      (*(*(v86 - 8) + 16))(&a1[v85], &a2[v85], v86);
    }

    else
    {
      *&a1[v85] = *&a2[v85];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100053470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  *(a1 + v10[8]) = *(a2 + v10[8]);
  v13 = v10[9];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v32 = a5;
    v33 = a6;
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
    a5 = v32;
    a6 = v33;
  }

  *(a1 + v10[10]) = *(a2 + v10[10]);
  *(a1 + v10[11]) = *(a2 + v10[11]);
  *(a1 + v10[12]) = *(a2 + v10[12]);
  *(a1 + v10[13]) = *(a2 + v10[13]);
  *(a1 + v10[14]) = *(a2 + v10[14]);
  *(a1 + v10[15]) = *(a2 + v10[15]);
  *(a1 + v10[16]) = *(a2 + v10[16]);
  *(a1 + v10[17]) = *(a2 + v10[17]);
  v26 = v10[18];
  v27 = sub_1000C0938();
  (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
  *(a1 + v10[19]) = *(a2 + v10[19]);
  *(a1 + v10[20]) = *(a2 + v10[20]);
  v28 = *(a3 + 20);
  v29 = sub_100004D04(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = a6(0);
    (*(*(v30 - 8) + 32))(a1 + v28, a2 + v28, v30);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v28), (a2 + v28), *(*(v29 - 8) + 64));
  }

  return a1;
}

uint64_t sub_1000538C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v8 = *(a2 + 8);
  v9 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v8;

  *(a1 + 16) = *(a2 + 16);
  v10 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = v11[7];
  v13 = sub_1000C0E58();
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = v11[8];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  v19 = v15[1];
  *v15 = v18;
  v15[1] = v17;

  v20 = v11[9];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v24 = *(v23 - 1);
  v25 = *(v24 + 48);
  LODWORD(v12) = v25(v21, 1, v23);
  v26 = v25(v22, 1, v23);
  if (v12)
  {
    if (!v26)
    {
      v27 = *(v22 + 1);
      *v21 = *v22;
      *(v21 + 1) = v27;
      v28 = v23[6];
      v29 = sub_1000C0818();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(&v22[v28], 1, v29))
      {
        v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(&v21[v28], &v22[v28], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v30 + 32))(&v21[v28], &v22[v28], v29);
        (*(v30 + 56))(&v21[v28], 0, 1, v29);
      }

      v42 = v23[7];
      v43 = sub_1000C0938();
      (*(*(v43 - 8) + 32))(&v21[v42], &v22[v42], v43);
      *&v21[v23[8]] = *&v22[v23[8]];
      *&v21[v23[9]] = *&v22[v23[9]];
      v21[v23[10]] = v22[v23[10]];
      v21[v23[11]] = v22[v23[11]];
      (*(v24 + 56))(v21, 0, 1, v23);
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (v26)
  {
    sub_100048940(v21, type metadata accessor for TTRNewWidgetViewModel.Reminder);
LABEL_7:
    v32 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v21, v22, *(*(v32 - 8) + 64));
    goto LABEL_19;
  }

  v33 = *v21;
  *v21 = *v22;

  v34 = *(v21 + 1);
  *(v21 + 1) = *(v22 + 1);

  v35 = v23[6];
  v36 = sub_1000C0818();
  v86 = *(v36 - 8);
  v37 = *(v86 + 48);
  v87 = v37(&v21[v35], 1, v36);
  v38 = v37(&v22[v35], 1, v36);
  if (v87)
  {
    if (!v38)
    {
      (*(v86 + 32))(&v21[v35], &v22[v35], v36);
      (*(v86 + 56))(&v21[v35], 0, 1, v36);
      goto LABEL_18;
    }

    v39 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v40 = &v21[v35];
    v41 = &v22[v35];
  }

  else
  {
    if (!v38)
    {
      (*(v86 + 40))(&v21[v35], &v22[v35], v36);
      goto LABEL_18;
    }

    (*(v86 + 8))(&v21[v35], v36);
    v39 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v40 = &v21[v35];
    v41 = &v22[v35];
  }

  memcpy(v40, v41, v39);
LABEL_18:
  v44 = v23[7];
  v45 = sub_1000C0938();
  (*(*(v45 - 8) + 40))(&v21[v44], &v22[v44], v45);
  v46 = v23[8];
  v47 = *&v21[v46];
  *&v21[v46] = *&v22[v46];

  *&v21[v23[9]] = *&v22[v23[9]];
  v21[v23[10]] = v22[v23[10]];
  v21[v23[11]] = v22[v23[11]];
LABEL_19:
  v48 = v11[10];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);

  v50 = v11[11];
  v51 = (a1 + v50);
  v52 = (a2 + v50);
  v54 = *v52;
  v53 = v52[1];
  v55 = v51[1];
  *v51 = v54;
  v51[1] = v53;

  v56 = v11[12];
  v57 = *(a1 + v56);
  *(a1 + v56) = *(a2 + v56);

  v58 = v11[13];
  v59 = (a1 + v58);
  v60 = (a2 + v58);
  v62 = *v60;
  v61 = v60[1];
  v63 = v59[1];
  *v59 = v62;
  v59[1] = v61;

  v64 = v11[14];
  v65 = (a1 + v64);
  v66 = (a2 + v64);
  v68 = *v66;
  v67 = v66[1];
  v69 = v65[1];
  *v65 = v68;
  v65[1] = v67;

  *(a1 + v11[15]) = *(a2 + v11[15]);
  v70 = v11[16];
  v71 = (a1 + v70);
  v72 = (a2 + v70);
  v74 = *v72;
  v73 = v72[1];
  v75 = v71[1];
  *v71 = v74;
  v71[1] = v73;

  v76 = v11[17];
  v77 = *(a1 + v76);
  *(a1 + v76) = *(a2 + v76);

  v78 = v11[18];
  v79 = sub_1000C0938();
  (*(*(v79 - 8) + 40))(a1 + v78, a2 + v78, v79);
  v80 = v11[19];
  v81 = *(a1 + v80);
  *(a1 + v80) = *(a2 + v80);

  *(a1 + v11[20]) = *(a2 + v11[20]);
  if (a1 != a2)
  {
    v82 = *(a3 + 20);
    sub_1000084C0(a1 + v82, a4, a5);
    v83 = sub_100004D04(a4, a5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = a6(0);
      (*(*(v84 - 8) + 32))(a1 + v82, a2 + v82, v84);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v82), (a2 + v82), *(*(v83 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_100054018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_100004D04(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100054148(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_100004D04(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_10005427C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = type metadata accessor for TTRNewWidgetViewModel(319);
  if (v8 <= 0x3F)
  {
    v11 = *(v7 - 8) + 64;
    sub_10005435C(319, a4, a5);
    if (v10 <= 0x3F)
    {
      v12 = *(v9 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_10005435C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C15C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1000543B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v7 = type metadata accessor for TTRNewWidgetViewModel(0);
    v8 = v7[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = v7[8];
    v12 = &v4[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = v7[9];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v73 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v71 = v18[6];
      v25 = sub_1000C0818();
      v68 = *(v25 - 8);
      v69 = *(v68 + 48);
      v26 = v23;
      v27 = v24;
      if (v69(v17 + v71, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v71, v17 + v71, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v68 + 16))(v16 + v71, v17 + v71, v25);
        (*(v68 + 56))(v16 + v71, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v73 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v7[10];
    v74 = *(a2 + v35);
    *&v4[v35] = v74;
    v36 = v7[11];
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v39;
    v40 = v7[12];
    v72 = *(a2 + v40);
    *&v4[v40] = v72;
    v41 = v7[13];
    v42 = &v4[v41];
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    *(v42 + 1) = v44;
    v45 = v7[14];
    v46 = &v4[v45];
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v7[15]] = *(a2 + v7[15]);
    v49 = v7[16];
    v50 = &v4[v49];
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    *(v50 + 1) = v52;
    *&v4[v7[17]] = *(a2 + v7[17]);
    v53 = v7[18];
    v54 = sub_1000C0938();
    v70 = *(*(v54 - 8) + 16);
    v55 = v74;

    v56 = v72;

    v70(&v4[v53], a2 + v53, v54);
    *&v4[v7[19]] = *(a2 + v7[19]);
    v4[v7[20]] = *(a2 + v7[20]);
    v57 = *(a3 + 20);

    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = sub_1000C16C8();
      (*(*(v58 - 8) + 16))(&v4[v57], a2 + v57, v58);
    }

    else
    {
      *&v4[v57] = *(a2 + v57);
    }

    swift_storeEnumTagMultiPayload();
    v59 = *(a3 + 24);
    v60 = &v4[v59];
    v61 = a2 + v59;
    v62 = *v61;
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    v65 = *(v61 + 24);
    v66 = *(v61 + 32);
    sub_100054900(*v61, v63, v64, v65, v66);
    *v60 = v62;
    *(v60 + 1) = v63;
    *(v60 + 2) = v64;
    *(v60 + 3) = v65;
    v60[32] = v66;
  }

  return v4;
}

uint64_t sub_100054900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10005490C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 32);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *(a1 + v6[8] + 8);

  v10 = (a1 + v6[9]);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {

    v12 = v11[6];
    v13 = sub_1000C0818();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    v15 = v11[7];
    v16 = sub_1000C0938();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  v17 = *(a1 + v6[11] + 8);

  v18 = *(a1 + v6[13] + 8);

  v19 = *(a1 + v6[14] + 8);

  v20 = *(a1 + v6[16] + 8);

  v21 = *(a1 + v6[17]);

  v22 = v6[18];
  v23 = sub_1000C0938();
  (*(*(v23 - 8) + 8))(a1 + v22, v23);
  v24 = *(a1 + v6[19]);

  v25 = *(a2 + 20);
  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1000C16C8();
    (*(*(v26 - 8) + 8))(a1 + v25, v26);
  }

  else
  {
    v27 = *(a1 + v25);
  }

  v28 = a1 + *(a2 + 24);
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v33 = *(v28 + 32);

  return sub_100054C08(v29, v30, v31, v32, v33);
}