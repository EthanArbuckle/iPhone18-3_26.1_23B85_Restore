uint64_t sub_100001FC4(uint64_t a1, id *a2)
{
  result = sub_1000811F8();
  *a2 = 0;
  return result;
}

uint64_t sub_10000203C(uint64_t a1, id *a2)
{
  v3 = sub_100081208();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000020BC@<X0>(void *a1@<X8>)
{
  sub_100081218();
  v2 = sub_1000811D8();

  *a1 = v2;
  return result;
}

uint64_t sub_100002100(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100081218();
  v6 = v5;
  if (v4 == sub_100081218() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100081618();
  }

  return v9 & 1;
}

uint64_t sub_10000218C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000811D8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000021D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100081218();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002200(uint64_t a1)
{
  v2 = sub_10000234C(&qword_1000AC970, type metadata accessor for BDSCloudAssetType);
  v3 = sub_10000234C(&qword_1000AC978, type metadata accessor for BDSCloudAssetType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000234C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000023DC(uint64_t a1)
{
  v2 = sub_10000234C(&qword_1000AC960, type metadata accessor for BDSLibraryContentAssetType);
  v3 = sub_10000234C(&qword_1000AC968, type metadata accessor for BDSLibraryContentAssetType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000257C()
{
  v1 = *v0;
  sub_100081218();
  v2 = sub_100081318();

  return v2;
}

uint64_t sub_1000025B8()
{
  v1 = *v0;
  sub_100081218();
  sub_100081298();
}

Swift::Int sub_10000260C()
{
  v1 = *v0;
  sub_100081218();
  sub_1000816B8();
  sub_100081298();
  v2 = sub_1000816F8();

  return v2;
}

__n128 sub_100002680(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002690(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000026B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000026EC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100002840(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000289C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SmallWidgetView()
{
  result = qword_1000AC9E8;
  if (!qword_1000AC9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000029B0()
{
  sub_100002A24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002A24()
{
  if (!qword_1000AC9F8)
  {
    sub_1000807B8();
    v0 = sub_1000807C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AC9F8);
    }
  }
}

uint64_t sub_100002A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v39 = sub_1000807B8();
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v39);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100080B88();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v36);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000ACA30, &qword_100085AE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v36 - v13);
  v42 = sub_100002840(&qword_1000ACA38, &qword_100085AE8);
  v41 = *(v42 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v42);
  v17 = &v36 - v16;
  *v14 = sub_100080F48();
  v14[1] = v18;
  v19 = sub_100002840(&qword_1000ACA40, &qword_100085AF0);
  sub_100002FA4(a2, a1, v14 + *(v19 + 44));
  sub_100080B78();
  v44 = a2;
  sub_100080F48();
  sub_100002840(&qword_1000ACA48, &qword_100085AF8);
  sub_100005C98(&qword_1000ACA50, &qword_1000ACA30, &qword_100085AE0);
  sub_100005010();
  v40 = v17;
  sub_100080DF8();
  (*(v7 + 8))(v10, v36);
  sub_100005B2C(v14, &qword_1000ACA30, &qword_100085AE0);
  v20 = a2 + *(type metadata accessor for SmallWidgetView() + 20);
  v21 = *(v20 + 80);
  v53 = *(v20 + 64);
  v54 = v21;
  v55 = *(v20 + 96);
  v56 = *(v20 + 112);
  v22 = *(v20 + 48);
  v51 = *(v20 + 32);
  v52 = v22;
  if (sub_1000112D4())
  {
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = *(v20 + 80);
    v47 = *(v20 + 64);
    v48 = v26;
    v49 = *(v20 + 96);
    v50 = *(v20 + 112);
    v27 = *(v20 + 48);
    v45 = *(v20 + 32);
    v46 = v27;
    v28 = *(v20 + 120);
    v29 = *(v20 + 128);
    if (sub_1000112D4() & 1) != 0 && v29 && (__PAIR128__(v29, v28) == v47 || (sub_100081618()))
    {
      (*(v24 + 104))(v23, enum case for ColorScheme.light(_:), v25);
    }

    else
    {
      sub_100005180(v23);
    }
  }

  else
  {
    v24 = v38;
    v23 = v37;
    v25 = v39;
    (*(v38 + 104))(v37, enum case for ColorScheme.light(_:), v39);
  }

  KeyPath = swift_getKeyPath();
  v31 = sub_100002840(&qword_1000ACA78, &qword_100085B38);
  v32 = v43;
  v33 = (v43 + *(v31 + 36));
  v34 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  (*(v24 + 32))(v33 + *(v34 + 28), v23, v25);
  *v33 = KeyPath;
  return (*(v41 + 32))(v32, v40, v42);
}

uint64_t sub_100002FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a2;
  v153 = a3;
  v4 = type metadata accessor for LogoView();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v154 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v152 = &v129 - v8;
  v131 = sub_100002840(&qword_1000ACAA0, &qword_100085B90);
  v129 = *(v131 - 8);
  v9 = *(v129 + 64);
  __chkstk_darwin(v131);
  v11 = &v129 - v10;
  v151 = sub_100002840(&qword_1000ACAA8, &qword_100085B98);
  v12 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v130 = &v129 - v13;
  v14 = sub_100080A58();
  v138 = *(v14 - 8);
  v139 = v14;
  v15 = *(v138 + 64);
  __chkstk_darwin(v14);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100080B68();
  v141 = *(v18 - 8);
  v142 = v18;
  v19 = *(v141 + 64);
  __chkstk_darwin(v18);
  v140 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SmallEmptyStateView(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100002840(&qword_1000ACAB0, &qword_100085BA0);
  v134 = *(v25 - 8);
  v135 = v25;
  v26 = *(v134 + 64);
  __chkstk_darwin(v25);
  v132 = &v129 - v27;
  v28 = sub_100002840(&qword_1000ACAB8, &qword_100085BA8);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v133 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v136 = &v129 - v33;
  __chkstk_darwin(v32);
  v137 = &v129 - v34;
  v147 = sub_100002840(&qword_1000ACAC0, &qword_100085BB0);
  v35 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v148 = &v129 - v36;
  v145 = sub_100002840(&qword_1000ACAC8, &qword_100085BB8);
  v37 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v144 = &v129 - v38;
  v146 = sub_100002840(&qword_1000ACAD0, &qword_100085BC0);
  v39 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v41 = &v129 - v40;
  v42 = type metadata accessor for SmallReadingGoalView(0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100002840(&qword_1000ACAD8, &qword_100085BC8);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v150 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v149 = &v129 - v50;
  v51 = (a1 + *(type metadata accessor for SmallWidgetView() + 20));
  if (*v51 > 0.0 || *(v51 + 3) >= 1)
  {
    v88 = v51[7];
    v184 = v51[6];
    v185 = v88;
    *&v186 = *(v51 + 16);
    v89 = v51[3];
    v180 = v51[2];
    v181 = v89;
    v90 = v51[5];
    v182 = v51[4];
    v183 = v90;
    v91 = v51[1];
    v178 = *v51;
    v179 = v91;
    v92 = *(v42 + 24);
    v93 = sub_100080808();
    (*(*(v93 - 8) + 16))(&v45[v92], v143, v93);
    v94 = v185;
    *(v45 + 6) = v184;
    *(v45 + 7) = v94;
    *(v45 + 16) = v186;
    v95 = v181;
    *(v45 + 2) = v180;
    *(v45 + 3) = v95;
    v96 = v183;
    *(v45 + 4) = v182;
    *(v45 + 5) = v96;
    v97 = v179;
    *v45 = v178;
    *(v45 + 1) = v97;
    v98 = &v45[*(v42 + 20)];
    v143 = v28;
    v99 = enum case for BlendMode.plusLighter(_:);
    v100 = sub_100080F68();
    (*(*(v100 - 8) + 104))(v98, v99, v100);
    v101 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
    *&v98[v101[5]] = 2;
    *&v98[v101[6]] = 0x4010000000000000;
    *&v98[v101[7]] = 0x4028000000000000;
    *&v98[v101[8]] = 0x403C000000000000;
    v102 = v101[9];
    v103 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    (*(*(v103 - 8) + 56))(&v98[v102], 1, 1, v103);
    v104 = v101[10];
    sub_1000056CC(&v178, &v159);
    *&v98[v104] = sub_100080CB8();
    v105 = v101[11];
    *&v98[v105] = sub_100080E48();
    v106 = v144;
    v107 = v41;
    v108 = v101[12];
    sub_100080E48();
    v109 = sub_100080E58();

    *&v98[v108] = v109;
    *&v98[v101[13]] = 0x4008000000000000;
    *&v98[v101[14]] = 0x4028000000000000;
    *&v98[v101[15]] = 0x404E000000000000;
    *&v98[v101[16]] = 0x4036000000000000;
    *&v98[v101[17]] = xmmword_100085A30;
    sub_100005B8C(v45, v106, type metadata accessor for SmallReadingGoalView);
    swift_storeEnumTagMultiPayload();
    sub_1000059FC(&qword_1000ACAF8, type metadata accessor for SmallReadingGoalView);
    sub_1000058E0();
    sub_100080AD8();
    sub_1000055FC(v107, v148, &qword_1000ACAD0, &qword_100085BC0);
    swift_storeEnumTagMultiPayload();
    sub_100005824();
    sub_100005A44();
    v84 = v149;
    sub_100080AD8();
    sub_100005B2C(v107, &qword_1000ACAD0, &qword_100085BC0);
    sub_100005BF4(v45, type metadata accessor for SmallReadingGoalView);
  }

  else
  {
    if (*(v51 + 8) == 0xD000000000000023 && 0x8000000100082090 == *(v51 + 9) || (sub_100081618() & 1) != 0)
    {
      v52 = v51[7];
      v184 = v51[6];
      v185 = v52;
      *&v186 = *(v51 + 16);
      v53 = v51[3];
      v180 = v51[2];
      v181 = v53;
      v54 = v51[5];
      v182 = v51[4];
      v183 = v54;
      v55 = v51[1];
      v178 = *v51;
      v179 = v55;
      *v24 = swift_getKeyPath();
      sub_100002840(&qword_1000ACA98, &qword_1000864C0);
      swift_storeEnumTagMultiPayload();
      v56 = v24 + *(v21 + 20);
      v57 = v185;
      *(v56 + 6) = v184;
      *(v56 + 7) = v57;
      *(v56 + 16) = v186;
      v58 = v181;
      *(v56 + 2) = v180;
      *(v56 + 3) = v58;
      v59 = v183;
      *(v56 + 4) = v182;
      *(v56 + 5) = v59;
      v60 = v179;
      *v56 = v178;
      *(v56 + 1) = v60;
      v61 = v24 + *(v21 + 24);
      v131 = v42;
      v62 = enum case for ColorScheme.dark(_:);
      v63 = sub_1000807B8();
      (*(*(v63 - 8) + 104))(v61, v62, v63);
      v64 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
      v65 = v64[5];
      v66 = enum case for BlendMode.plusLighter(_:);
      v67 = sub_100080F68();
      (*(*(v67 - 8) + 104))(&v61[v65], v66, v67);
      *&v61[v64[6]] = 0x3FF0000000000000;
      v68 = v64[7];
      sub_1000056CC(&v178, &v159);
      *&v61[v68] = sub_100080CC8();
      v69 = v64[8];
      sub_100080C88();
      *&v61[v69] = v70;
      v71 = v64[9];
      *&v61[v71] = sub_100080B18();
      v130 = v41;
      v72 = v17;
      v143 = v28;
      v73 = v64[10];
      sub_100080E48();
      v74 = sub_100080E58();

      *&v61[v73] = v74;
      *&v61[v64[11]] = 0x4018000000000000;
      *&v61[v64[12]] = 0x4014000000000000;
      v75 = v140;
      sub_100080B48();
      v76 = sub_1000059FC(&qword_1000ACB08, type metadata accessor for SmallEmptyStateView);
      v77 = v132;
      sub_100080E08();
      (*(v141 + 8))(v75, v142);
      sub_100005BF4(v24, type metadata accessor for SmallEmptyStateView);
      *&v159 = sub_1000040B4();
      *(&v159 + 1) = v78;
      *&v169 = v21;
      *(&v169 + 1) = v76;
      swift_getOpaqueTypeConformance2();
      sub_1000057D0();
      v79 = v133;
      v80 = v135;
      sub_100080DD8();

      (*(v134 + 8))(v77, v80);
      sub_100080A48();
      v81 = v136;
      sub_100080898();
      (*(v138 + 8))(v72, v139);
      sub_100005B2C(v79, &qword_1000ACAB8, &qword_100085BA8);
      sub_100004334();
      v82 = v137;
      sub_1000808A8();

      sub_100005B2C(v81, &qword_1000ACAB8, &qword_100085BA8);
      sub_1000055FC(v82, v144, &qword_1000ACAB8, &qword_100085BA8);
      swift_storeEnumTagMultiPayload();
      sub_1000059FC(&qword_1000ACAF8, type metadata accessor for SmallReadingGoalView);
      sub_1000058E0();
      v83 = v130;
      sub_100080AD8();
      sub_1000055FC(v83, v148, &qword_1000ACAD0, &qword_100085BC0);
      swift_storeEnumTagMultiPayload();
      sub_100005824();
      sub_100005A44();
      v84 = v149;
      sub_100080AD8();
      sub_100005B2C(v83, &qword_1000ACAD0, &qword_100085BC0);
      v85 = v82;
      v86 = &qword_1000ACAB8;
      v87 = &qword_100085BA8;
    }

    else
    {
      v110 = v51[7];
      v175 = v51[6];
      v176 = v110;
      v177 = *(v51 + 16);
      v111 = v51[3];
      v171 = v51[2];
      v172 = v111;
      v112 = v51[5];
      v173 = v51[4];
      v174 = v112;
      v113 = v51[1];
      v169 = *v51;
      v170 = v113;
      sub_1000056CC(&v169, &v178);
      v114 = sub_100080CB8();
      v165 = v175;
      v166 = v176;
      *&v167[0] = v177;
      v161 = v171;
      v162 = v172;
      v163 = v173;
      v164 = v174;
      v159 = v169;
      v160 = v170;
      *(v167 + 8) = xmmword_100085A20;
      *(&v167[1] + 1) = 0x4020000000000000;
      *&v168 = v114;
      *(&v168 + 1) = 0x4036000000000000;
      v115 = v140;
      sub_100080B48();
      v116 = sub_100005728();
      sub_100080E08();
      (*(v141 + 8))(v115, v142);
      v186 = v167[0];
      v187 = v167[1];
      v188 = v168;
      v182 = v163;
      v183 = v164;
      v184 = v165;
      v185 = v166;
      v178 = v159;
      v179 = v160;
      v180 = v161;
      v181 = v162;
      sub_10000577C(&v178);
      v117 = v51[5];
      v161 = v51[4];
      v162 = v117;
      v163 = v51[6];
      LOBYTE(v164) = *(v51 + 112);
      v118 = v51[3];
      v159 = v51[2];
      v160 = v118;
      v157 = sub_100056778(0);
      v158 = v119;
      v155 = &type metadata for SmallBookProgressView;
      v156 = v116;
      swift_getOpaqueTypeConformance2();
      sub_1000057D0();
      v121 = v130;
      v120 = v131;
      sub_100080DD8();

      (*(v129 + 8))(v11, v120);
      sub_1000055FC(v121, v148, &qword_1000ACAA8, &qword_100085B98);
      swift_storeEnumTagMultiPayload();
      sub_100005824();
      sub_100005A44();
      v84 = v149;
      sub_100080AD8();
      v85 = v121;
      v86 = &qword_1000ACAA8;
      v87 = &qword_100085B98;
    }

    sub_100005B2C(v85, v86, v87);
  }

  v122 = sub_100080308();
  v123 = v152;
  (*(*(v122 - 8) + 56))(v152, 1, 1, v122);
  v124 = v150;
  sub_1000055FC(v84, v150, &qword_1000ACAD8, &qword_100085BC8);
  v125 = v154;
  sub_100005B8C(v123, v154, type metadata accessor for LogoView);
  v126 = v153;
  sub_1000055FC(v124, v153, &qword_1000ACAD8, &qword_100085BC8);
  v127 = sub_100002840(&qword_1000ACB20, &unk_100085BD0);
  sub_100005B8C(v125, v126 + *(v127 + 48), type metadata accessor for LogoView);
  sub_100005BF4(v123, type metadata accessor for LogoView);
  sub_100005B2C(v84, &qword_1000ACAD8, &qword_100085BC8);
  sub_100005BF4(v125, type metadata accessor for LogoView);
  return sub_100005B2C(v124, &qword_1000ACAD8, &qword_100085BC8);
}

uint64_t sub_1000040B4()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

void *sub_100004334()
{
  v40 = sub_100080478();
  v0 = *(v40 - 8);
  v1 = v0[8];
  v2 = __chkstk_darwin(v40);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v32 - v5;
  v7 = sub_1000811C8();
  v36 = v7;
  v41 = *(v7 - 8);
  v8 = v41;
  v9 = *(v41 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100085A40;
  sub_100081158();
  sub_100080448();
  v39 = *(v8 + 16);
  v39(v12, v14, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = ObjCClassFromMetadata;
  v37 = objc_opt_self();
  v16 = [v37 bundleForClass:ObjCClassFromMetadata];
  v34 = v0[2];
  v32[0] = v4;
  v17 = v40;
  v34(v4, v6, v40);
  v18 = sub_100081268();
  v20 = v19;
  v21 = v0[1];
  v32[1] = v0 + 1;
  v33 = v21;
  v21(v6, v17);
  v22 = *(v41 + 8);
  v41 += 8;
  v23 = v36;
  v22(v14, v36);
  v24 = v35;
  *(v35 + 32) = v18;
  v24[5] = v20;
  sub_100081158();
  sub_100080448();
  v25 = v23;
  v39(v12, v14, v23);
  v26 = [v37 bundleForClass:v38];
  v27 = v40;
  v34(v32[0], v6, v40);
  v28 = sub_100081268();
  v30 = v29;
  v33(v6, v27);
  v22(v14, v25);
  result = v24;
  v24[6] = v28;
  v24[7] = v30;
  return result;
}

uint64_t sub_1000046FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v28 = sub_100002840(&qword_1000ACA88, &qword_100085B48);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = &v27 - v4;
  v6 = sub_100002840(&qword_1000ACA90, &qword_100085B50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v29 = sub_100002840(&qword_1000ACA68, &qword_100085B00);
  v10 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v12 = &v27 - v11;
  v13 = type metadata accessor for BackgroundView();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1 + *(type metadata accessor for SmallWidgetView() + 20);
  v18 = *(v17 + 80);
  v39 = *(v17 + 64);
  v40 = v18;
  v41 = *(v17 + 96);
  v42 = *(v17 + 112);
  v19 = *(v17 + 48);
  v37 = *(v17 + 32);
  v38 = v19;
  v20 = *(v17 + 120);
  v21 = *(v17 + 128);
  if (sub_1000112D4() & 1) != 0 && v21 && (__PAIR128__(v21, v20) == v39 || (sub_100081618()))
  {
    if (qword_1000AC648 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v22 = *(v17 + 80);
  v33 = *(v17 + 64);
  v34 = v22;
  v35 = *(v17 + 96);
  v36 = *(v17 + 112);
  v23 = *(v17 + 48);
  v31 = *(v17 + 32);
  v32 = v23;
  if ((sub_1000112D4() & 1) == 0)
  {
    v21 = *(&v33 + 1);
    v20 = v33;
    if (qword_1000AC648 == -1)
    {
LABEL_10:
      v24 = *sub_100005554(qword_1000B7F10, qword_1000B7F28);
      v25 = sub_10003ABAC(v20, v21, 1);
      *v16 = swift_getKeyPath();
      sub_100002840(&qword_1000ACA98, &qword_1000864C0);
      swift_storeEnumTagMultiPayload();
      *(v16 + *(v13 + 20)) = v25;
      sub_100005B8C(v16, v9, type metadata accessor for BackgroundView);
      swift_storeEnumTagMultiPayload();
      sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView);
      sub_100080AD8();
      sub_1000055FC(v12, v5, &qword_1000ACA68, &qword_100085B00);
      swift_storeEnumTagMultiPayload();
      sub_1000050CC();
      sub_100080AD8();
      sub_100005664(v12);
      return sub_100005BF4(v16, type metadata accessor for BackgroundView);
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  *v16 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  *(v16 + *(v13 + 20)) = 0;
  sub_100005B8C(v16, v5, type metadata accessor for BackgroundView);
  swift_storeEnumTagMultiPayload();
  sub_1000050CC();
  sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView);
  sub_100080AD8();
  return sub_100005BF4(v16, type metadata accessor for BackgroundView);
}

uint64_t sub_100004C90@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100005B8C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmallWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100004EDC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100004F40;
  a2[1] = v7;
  return result;
}

uint64_t sub_100004D90()
{
  v1 = type metadata accessor for SmallWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000807B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *(v8 + 5);

  v10 = *(v8 + 9);

  v11 = *(v8 + 13);

  v12 = *(v8 + 16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100004EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SmallWidgetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100002A98(a1, v6, a2);
}

uint64_t sub_100004FC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005010()
{
  result = qword_1000ACA58;
  if (!qword_1000ACA58)
  {
    sub_100004FC8(&qword_1000ACA48, &qword_100085AF8);
    sub_1000050CC();
    sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACA58);
  }

  return result;
}

unint64_t sub_1000050CC()
{
  result = qword_1000ACA60;
  if (!qword_1000ACA60)
  {
    sub_100004FC8(&qword_1000ACA68, &qword_100085B00);
    sub_1000059FC(&qword_1000ACA70, type metadata accessor for BackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACA60);
  }

  return result;
}

uint64_t sub_100005180@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000055FC(v2, &v17 - v11, &qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000807B8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100005444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void *sub_100005554(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000055FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002840(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005664(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACA68, &qword_100085B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005728()
{
  result = qword_1000ACAE0;
  if (!qword_1000ACAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACAE0);
  }

  return result;
}

unint64_t sub_1000057D0()
{
  result = qword_1000ACAE8;
  if (!qword_1000ACAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACAE8);
  }

  return result;
}

unint64_t sub_100005824()
{
  result = qword_1000ACAF0;
  if (!qword_1000ACAF0)
  {
    sub_100004FC8(&qword_1000ACAD0, &qword_100085BC0);
    sub_1000059FC(&qword_1000ACAF8, type metadata accessor for SmallReadingGoalView);
    sub_1000058E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACAF0);
  }

  return result;
}

unint64_t sub_1000058E0()
{
  result = qword_1000ACB00;
  if (!qword_1000ACB00)
  {
    sub_100004FC8(&qword_1000ACAB8, &qword_100085BA8);
    type metadata accessor for SmallEmptyStateView(255);
    sub_1000059FC(&qword_1000ACB08, type metadata accessor for SmallEmptyStateView);
    swift_getOpaqueTypeConformance2();
    sub_1000059FC(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB00);
  }

  return result;
}

uint64_t sub_1000059FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005A44()
{
  result = qword_1000ACB18;
  if (!qword_1000ACB18)
  {
    sub_100004FC8(&qword_1000ACAA8, &qword_100085B98);
    sub_100005728();
    swift_getOpaqueTypeConformance2();
    sub_1000059FC(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB18);
  }

  return result;
}

uint64_t sub_100005B2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002840(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100005C98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005CE8()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000ACB48);
  sub_10000A480(v0, qword_1000ACB48);
  return sub_1000806E8();
}

id sub_100005D68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000803D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100081038();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000810D8();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v12 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_1000803C8();
      sub_100002840(&qword_1000ACD90, "na");
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100085C00;
      v13 = BDSCloudAssetTypeStoreEbook;
      v14 = BDSLibraryContentAssetTypeUnknown;
      v41 = 1;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 32) = 0;
      *(v15 + 56) = 1;
      *(v15 + 64) = 0xD000000000000023;
      *(v15 + 72) = 0x8000000100082090;
      *(v15 + 80) = v13;
      *(v15 + 88) = v14;
      *(v15 + 96) = 0;
      *(v15 + 104) = 0;
      *(v15 + 112) = 0;
      v42 = 0;
      v43 = 0uLL;
      LOBYTE(v44[0]) = 0;
      *(&v44[0] + 1) = 0;
      *&v44[1] = v15;
      BYTE8(v44[1]) = 0;
      v44[2] = 0uLL;
      sub_10000AA80(&v43);
      goto LABEL_5;
    }

    if (v12 == enum case for WidgetFamily.systemLarge(_:))
    {
      sub_1000803C8();
      sub_10003CEA8();
      v23 = sub_100042C1C();
      v25 = v24;
      (*(v3 + 8))(v6, v2);
      sub_100002840(&qword_1000ACD90, "na");
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100085C00;
      v27 = BDSCloudAssetTypeStoreEbook;
      v28 = BDSLibraryContentAssetTypeUnknown;
      v41 = 1;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 32) = 0;
      *(v26 + 56) = 1;
      *(v26 + 64) = 0xD000000000000023;
      *(v26 + 72) = 0x8000000100082090;
      *(v26 + 80) = v27;
      *(v26 + 88) = v28;
      *(v26 + 96) = 0;
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      v42 = 0;
      v43 = 0uLL;
      LOBYTE(v44[0]) = 0;
      *(&v44[0] + 1) = 0;
      *&v44[1] = v23;
      *(&v44[1] + 1) = v25;
      *&v44[2] = v26;
      BYTE8(v44[2]) = 0;
      v45 = 0uLL;
      sub_10000AA5C(&v43);
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v52 = v44[1];
      v53 = v44[2];
      v54 = v45;
      v55 = v46;
      v50 = v43;
      v51 = v44[0];
      WidgetReadingHistory.Day.readingTime.getter(&v50);
      v29 = a1 + *(type metadata accessor for WidgetEntry(0) + 20);
      v30 = v57;
      *(v29 + 96) = v56;
      *(v29 + 112) = v30;
      *(v29 + 128) = v58;
      v31 = v53;
      *(v29 + 32) = v52;
      *(v29 + 48) = v31;
      v32 = v55;
      *(v29 + 64) = v54;
      *(v29 + 80) = v32;
      v33 = v51;
      *v29 = v50;
      *(v29 + 16) = v33;
      v34 = v27;
      return v28;
    }

    if (v12 != enum case for WidgetFamily.accessoryCorner(_:))
    {
      sub_1000803C8();
      sub_10000AA2C(&v50);
      v35 = a1 + *(type metadata accessor for WidgetEntry(0) + 20);
      v36 = v57;
      *(v35 + 96) = v56;
      *(v35 + 112) = v36;
      *(v35 + 128) = v58;
      v37 = v53;
      *(v35 + 32) = v52;
      *(v35 + 48) = v37;
      v38 = v55;
      *(v35 + 64) = v54;
      *(v35 + 80) = v38;
      v39 = v51;
      *v35 = v50;
      *(v35 + 16) = v39;
      return (*(v8 + 8))(v11, v7);
    }
  }

  sub_1000803C8();
  v13 = BDSCloudAssetTypeStoreEbook;
  v14 = BDSLibraryContentAssetTypeUnknown;
  v41 = 1;
  v42 = 0;
  v43 = 0uLL;
  LOBYTE(v44[0]) = 0;
  *(v44 + 8) = 0u;
  *(&v44[1] + 8) = 0u;
  BYTE8(v44[2]) = 1;
  *&v45 = 0xD000000000000023;
  *(&v45 + 1) = 0x8000000100082090;
  *&v46 = BDSCloudAssetTypeStoreEbook;
  *(&v46 + 1) = BDSLibraryContentAssetTypeUnknown;
  v47 = 0uLL;
  LOWORD(v48) = 0;
  *(&v48 + 1) = 0;
  v49 = 0;
  sub_10000AAA4(&v43);
LABEL_5:
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v52 = v44[1];
  v53 = v44[2];
  v54 = v45;
  v55 = v46;
  v50 = v43;
  v51 = v44[0];
  WidgetReadingHistory.Day.readingTime.getter(&v50);
  v16 = a1 + *(type metadata accessor for WidgetEntry(0) + 20);
  v17 = v57;
  *(v16 + 96) = v56;
  *(v16 + 112) = v17;
  *(v16 + 128) = v58;
  v18 = v53;
  *(v16 + 32) = v52;
  *(v16 + 48) = v18;
  v19 = v55;
  *(v16 + 64) = v54;
  *(v16 + 80) = v19;
  v20 = v51;
  *v16 = v50;
  *(v16 + 16) = v20;
  v21 = v13;
  return v14;
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for WidgetEntry(0);
  v6[26] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v9 = sub_100081038();
  v6[28] = v9;
  v10 = *(v9 - 8);
  v6[29] = v10;
  v11 = *(v10 + 64) + 15;
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_100006378, 0, 0);
}

uint64_t sub_100006378()
{
  v1 = v0[30];
  v2 = v0[23];
  type metadata accessor for WidgetDataController();
  inited = swift_initStackObject();
  v0[31] = inited;
  v4 = sub_10005C5EC();
  v0[32] = v4;
  *(inited + 16) = v4;
  v5 = [objc_allocWithZone(BDSReadingHistoryServiceClient) init];
  v0[33] = v5;
  *(inited + 24) = v5;
  sub_10003C4F8();
  sub_1000810D8();
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_100006474;
  v7 = v0[30];

  return sub_10005C784((v0 + 2), v7);
}

uint64_t sub_100006474()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000065CC, 0, 0);
}

uint64_t sub_1000065CC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  sub_1000803C8();
  v8 = v4 + *(v5 + 20);
  *v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 80);
  *(v8 + 48) = *(v0 + 64);
  *(v8 + 64) = v11;
  *(v8 + 16) = v9;
  *(v8 + 32) = v10;
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v14 = *(v0 + 128);
  *(v8 + 128) = *(v0 + 144);
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  *(v8 + 80) = v12;
  v7(v4);
  swift_unknownObjectRelease();

  sub_100009F18(v4, type metadata accessor for WidgetEntry);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000066D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002840(&qword_1000ACD78, &qword_100085E58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000055FC(a3, v27 - v11, &qword_1000ACD78, &qword_100085E58);
  v13 = sub_1000813E8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005B2C(v12, &qword_1000ACD78, &qword_100085E58);
  }

  else
  {
    sub_1000813D8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000813A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100081278() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005B2C(a3, &qword_1000ACD78, &qword_100085E58);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005B2C(a3, &qword_1000ACD78, &qword_100085E58);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000069D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = *(*(sub_1000810C8() - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v8 = sub_100002840(&qword_1000ACD80, &qword_100085E88);
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  v11 = sub_100080548();
  v6[30] = v11;
  v12 = *(v11 - 8);
  v6[31] = v12;
  v13 = *(v12 + 64) + 15;
  v6[32] = swift_task_alloc();
  v14 = sub_1000803D8();
  v6[33] = v14;
  v15 = *(v14 - 8);
  v6[34] = v15;
  v16 = *(v15 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v17 = type metadata accessor for WidgetEntry(0);
  v6[39] = v17;
  v18 = *(v17 - 8);
  v6[40] = v18;
  v19 = *(v18 + 64) + 15;
  v6[41] = swift_task_alloc();
  v20 = sub_100081038();
  v6[42] = v20;
  v21 = *(v20 - 8);
  v6[43] = v21;
  v22 = *(v21 + 64) + 15;
  v6[44] = swift_task_alloc();

  return _swift_task_switch(sub_100006C60, 0, 0);
}

uint64_t sub_100006C60()
{
  v1 = v0[44];
  v2 = v0[23];
  type metadata accessor for WidgetDataController();
  inited = swift_initStackObject();
  v0[45] = inited;
  v4 = sub_10005C5EC();
  v0[46] = v4;
  *(inited + 16) = v4;
  v5 = [objc_allocWithZone(BDSReadingHistoryServiceClient) init];
  v0[47] = v5;
  *(inited + 24) = v5;
  sub_10003C4F8();
  sub_1000810D8();
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_100006D5C;
  v7 = v0[44];

  return sub_10005C784((v0 + 2), v7);
}

uint64_t sub_100006D5C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100006EB4, 0, 0);
}

uint64_t sub_100006EB4()
{
  v34 = *(v0 + 376);
  v33 = *(v0 + 368);
  v35 = *(v0 + 352);
  v1 = *(v0 + 328);
  v25 = *(v0 + 320);
  v26 = v1;
  v2 = *(v0 + 312);
  v24 = *(v0 + 304);
  v3 = *(v0 + 288);
  v36 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v31 = *(v0 + 224);
  v32 = *(v0 + 216);
  v27 = *(v0 + 208);
  v30 = *(v0 + 200);
  v28 = *(v0 + 232);
  v29 = *(v0 + 192);
  sub_1000803C8();
  v10 = v1 + *(v2 + 20);
  *v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  v13 = *(v0 + 80);
  *(v10 + 48) = *(v0 + 64);
  *(v10 + 64) = v13;
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  v14 = *(v0 + 96);
  v15 = *(v0 + 112);
  v16 = *(v0 + 128);
  *(v10 + 128) = *(v0 + 144);
  *(v10 + 96) = v15;
  *(v10 + 112) = v16;
  *(v10 + 80) = v14;
  sub_100080508();
  sub_1000803C8();
  sub_100080498();
  v17 = *(v4 + 8);
  v17(v5, v7);
  v18 = *(v9 + 8);
  v18(v6, v8);
  sub_100080508();
  sub_100080338();
  v18(v6, v8);
  v17(v3, v7);
  sub_100080358();
  v17(v36, v7);
  sub_100002840(&qword_1000ACD88, &qword_100085E90);
  v19 = *(v25 + 72);
  v20 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100085C00;
  sub_100009E44(v26, v21 + v20, type metadata accessor for WidgetEntry);
  sub_1000810B8();
  sub_100009B0C(&qword_1000ACCF8, type metadata accessor for WidgetEntry);
  sub_1000810F8();
  v29(v28);
  swift_unknownObjectRelease();

  (*(v31 + 8))(v28, v32);
  v17(v24, v7);
  sub_100009F18(v26, type metadata accessor for WidgetEntry);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100007214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000810E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100002840(&qword_1000ACD78, &qword_100085E58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = sub_1000813E8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_10000A7F8;
  v17[1] = v13;

  sub_1000066D0(0, 0, v12, &unk_100085EA0, v16);
}

uint64_t sub_100007440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000074F4;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000074F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000075E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000AB6C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t _s20BooksWidgetExtension0B14ReadingHistoryO6StreakV7endDate10Foundation0H0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000803D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100007708@<X0>(uint64_t a1@<X8>)
{
  v86 = type metadata accessor for LargeWidgetView();
  v3 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v81 = (v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_100002840(&qword_1000ACD00, &qword_100085DE0);
  v5 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v85 = v78 - v6;
  v91 = sub_100002840(&qword_1000ACD08, &qword_100085DE8);
  v7 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v87 = v78 - v8;
  v84 = type metadata accessor for MediumWidgetView();
  v9 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v80 = (v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for SmallWidgetView();
  v11 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v79 = (v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100002840(&qword_1000ACD10, &qword_100085DF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v78 - v15;
  v88 = sub_100002840(&qword_1000ACD18, &qword_100085DF8);
  v17 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v90 = v78 - v18;
  v19 = sub_100002840(&qword_1000ACD20, &qword_100085E00);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v78 - v21;
  v89 = sub_100002840(&qword_1000ACD28, &qword_100085E08);
  v23 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v25 = v78 - v24;
  v26 = sub_100002840(&qword_1000ACD30, &qword_100085E10);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v92 = v78 - v28;
  v29 = (v1 + *(type metadata accessor for WidgetEntry(0) + 20));
  v30 = v29[5];
  v31 = v29[7];
  v111 = v29[6];
  v112 = v31;
  v32 = v29[1];
  v33 = v29[3];
  v107 = v29[2];
  v108 = v33;
  v34 = v29[3];
  v35 = v29[5];
  v109 = v29[4];
  v110 = v35;
  v36 = v29[1];
  v105 = *v29;
  v106 = v36;
  v37 = v29[7];
  v120 = v111;
  v121 = v37;
  v116 = v107;
  v117 = v34;
  v118 = v109;
  v119 = v30;
  v113 = *(v29 + 16);
  v122 = *(v29 + 16);
  v114 = v105;
  v115 = v32;
  if (sub_100009B70(&v114) == 1)
  {
    *v16 = 0;
    v16[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_100009B88();
    return sub_100080AD8();
  }

  v78[1] = v26;
  v78[2] = a1;
  v103[6] = v120;
  v103[7] = v121;
  v104 = v122;
  v103[2] = v116;
  v103[3] = v117;
  v103[4] = v118;
  v103[5] = v119;
  v103[0] = v114;
  v103[1] = v115;
  v39 = sub_100009E10(v103);
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v42 = sub_100009F08(v103);
      KeyPath = swift_getKeyPath();
      v68 = v80;
      *v80 = KeyPath;
      sub_100002840(&qword_1000ACA28, &qword_1000861E0);
      swift_storeEnumTagMultiPayload();
      v44 = v84;
      v45 = (v68 + *(v84 + 20));
      v46 = v42[1];
      v48 = v42[2];
      v47 = v42[3];
      *v45 = *v42;
      v45[1] = v46;
      v45[2] = v48;
      v45[3] = v47;
      v49 = v68 + *(v44 + 24);
      v100 = v111;
      v101 = v112;
      v102 = v113;
      v94 = v105;
      v95 = v106;
      v96 = v107;
      v97 = v108;
      v98 = v109;
      v99 = v110;
      sub_100009EAC(&v94, v93);
      v50 = sub_100080CB8();
      *v49 = 0x4036000000000000;
      *(v49 + 8) = v50;
      *(v49 + 16) = xmmword_100085A30;
      sub_100009E44(v68, v85, type metadata accessor for MediumWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_100009B0C(&qword_1000ACD60, type metadata accessor for MediumWidgetView);
      sub_100009B0C(&qword_1000ACD68, type metadata accessor for LargeWidgetView);
      v51 = v87;
      sub_100080AD8();
      sub_1000055FC(v51, v90, &qword_1000ACD08, &qword_100085DE8);
      swift_storeEnumTagMultiPayload();
      sub_100009C14();
      sub_100009D24();
      v52 = v92;
      sub_100080AD8();
      sub_100005B2C(v51, &qword_1000ACD08, &qword_100085DE8);
      sub_1000055FC(v52, v16, &qword_1000ACD30, &qword_100085E10);
      swift_storeEnumTagMultiPayload();
      sub_100009B88();
      sub_100080AD8();
      sub_100005B2C(v52, &qword_1000ACD30, &qword_100085E10);
      v77 = type metadata accessor for MediumWidgetView;
    }

    else
    {
      v66 = sub_100009F08(v103);
      v67 = swift_getKeyPath();
      v68 = v81;
      *v81 = v67;
      sub_100002840(&qword_1000ACA28, &qword_1000861E0);
      swift_storeEnumTagMultiPayload();
      v70 = v85;
      v69 = v86;
      v71 = (v68 + *(v86 + 20));
      *v71 = *v66;
      v72 = v66[1];
      v73 = v66[2];
      v74 = v66[4];
      v71[3] = v66[3];
      v71[4] = v74;
      v71[1] = v72;
      v71[2] = v73;
      *(v68 + *(v69 + 24)) = 0x4030000000000000;
      sub_100009E44(v68, v70, type metadata accessor for LargeWidgetView);
      swift_storeEnumTagMultiPayload();
      v100 = v111;
      v101 = v112;
      v102 = v113;
      v96 = v107;
      v97 = v108;
      v98 = v109;
      v99 = v110;
      v94 = v105;
      v95 = v106;
      sub_100009EAC(&v94, v93);
      sub_100009B0C(&qword_1000ACD60, type metadata accessor for MediumWidgetView);
      sub_100009B0C(&qword_1000ACD68, type metadata accessor for LargeWidgetView);
      v75 = v87;
      sub_100080AD8();
      sub_1000055FC(v75, v90, &qword_1000ACD08, &qword_100085DE8);
      swift_storeEnumTagMultiPayload();
      sub_100009C14();
      sub_100009D24();
      v76 = v92;
      sub_100080AD8();
      sub_100005B2C(v75, &qword_1000ACD08, &qword_100085DE8);
      sub_1000055FC(v76, v16, &qword_1000ACD30, &qword_100085E10);
      swift_storeEnumTagMultiPayload();
      sub_100009B88();
      sub_100080AD8();
      sub_100005B2C(v76, &qword_1000ACD30, &qword_100085E10);
      v77 = type metadata accessor for LargeWidgetView;
    }

    v64 = v77;
    v65 = v68;
  }

  else
  {
    if (!v39)
    {
      v40 = sub_100009F08(v103);
      memmove(v22, v40, 0x88uLL);
      swift_storeEnumTagMultiPayload();
      v100 = v111;
      v101 = v112;
      v102 = v113;
      v96 = v107;
      v97 = v108;
      v98 = v109;
      v99 = v110;
      v94 = v105;
      v95 = v106;
      sub_1000055FC(&v105, v93, &qword_1000ACD70, &qword_100085E50);
      sub_100009EAC(&v94, v93);
      sub_100009CD0();
      sub_100009B0C(&qword_1000ACD50, type metadata accessor for SmallWidgetView);
      sub_100080AD8();
      sub_1000055FC(v25, v90, &qword_1000ACD28, &qword_100085E08);
      swift_storeEnumTagMultiPayload();
      sub_100009C14();
      sub_100009D24();
      v41 = v92;
      sub_100080AD8();
      sub_100005B2C(v25, &qword_1000ACD28, &qword_100085E08);
      sub_1000055FC(v41, v16, &qword_1000ACD30, &qword_100085E10);
      swift_storeEnumTagMultiPayload();
      sub_100009B88();
      sub_100080AD8();
      sub_100005B2C(&v105, &qword_1000ACD70, &qword_100085E50);
      return sub_100005B2C(v41, &qword_1000ACD30, &qword_100085E10);
    }

    v53 = sub_100009F08(v103);
    v54 = swift_getKeyPath();
    v55 = v79;
    *v79 = v54;
    sub_100002840(&qword_1000ACA28, &qword_1000861E0);
    swift_storeEnumTagMultiPayload();
    v56 = v55 + *(v82 + 20);
    *v56 = *v53;
    v57 = *(v53 + 16);
    v58 = *(v53 + 32);
    v59 = *(v53 + 64);
    *(v56 + 48) = *(v53 + 48);
    *(v56 + 64) = v59;
    *(v56 + 16) = v57;
    *(v56 + 32) = v58;
    v60 = *(v53 + 80);
    v61 = *(v53 + 96);
    v62 = *(v53 + 112);
    *(v56 + 128) = *(v53 + 128);
    *(v56 + 96) = v61;
    *(v56 + 112) = v62;
    *(v56 + 80) = v60;
    sub_100009E44(v55, v22, type metadata accessor for SmallWidgetView);
    swift_storeEnumTagMultiPayload();
    v100 = v111;
    v101 = v112;
    v102 = v113;
    v96 = v107;
    v97 = v108;
    v98 = v109;
    v99 = v110;
    v94 = v105;
    v95 = v106;
    sub_100009EAC(&v94, v93);
    sub_100009CD0();
    sub_100009B0C(&qword_1000ACD50, type metadata accessor for SmallWidgetView);
    sub_100080AD8();
    sub_1000055FC(v25, v90, &qword_1000ACD28, &qword_100085E08);
    swift_storeEnumTagMultiPayload();
    sub_100009C14();
    sub_100009D24();
    v63 = v92;
    sub_100080AD8();
    sub_100005B2C(v25, &qword_1000ACD28, &qword_100085E08);
    sub_1000055FC(v63, v16, &qword_1000ACD30, &qword_100085E10);
    swift_storeEnumTagMultiPayload();
    sub_100009B88();
    sub_100080AD8();
    sub_100005B2C(v63, &qword_1000ACD30, &qword_100085E10);
    v64 = type metadata accessor for SmallWidgetView;
    v65 = v55;
  }

  return sub_100009F18(v65, v64);
}

uint64_t sub_100008460@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v91 = sub_100080478();
  v1 = *(v91 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v91);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v78 - v6;
  v8 = sub_1000811C8();
  v107 = *(v8 - 8);
  v9 = v107;
  v10 = *(v107 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v78 - v14;
  v101 = sub_100002840(&qword_1000ACB68, &qword_100085C88);
  v92 = *(v101 - 8);
  v16 = *(v92 + 64);
  __chkstk_darwin(v101);
  v89 = &v78 - v17;
  v102 = sub_100002840(&qword_1000ACB70, &qword_100085C90);
  v93 = *(v102 - 8);
  v18 = *(v93 + 64);
  __chkstk_darwin(v102);
  v103 = &v78 - v19;
  v106 = sub_100002840(&qword_1000ACB78, &qword_100085C98);
  v94 = *(v106 - 8);
  v20 = *(v94 + 64);
  __chkstk_darwin(v106);
  v104 = &v78 - v21;
  v99 = sub_100002840(&qword_1000ACB80, &qword_100085CA0);
  v96 = *(v99 - 8);
  v22 = *(v96 + 64);
  __chkstk_darwin(v99);
  v105 = &v78 - v23;
  v24 = sub_100002840(&qword_1000ACB88, &qword_100085CA8);
  v97 = *(v24 - 8);
  v98 = v24;
  v25 = *(v97 + 64);
  __chkstk_darwin(v24);
  v95 = &v78 - v26;
  type metadata accessor for BooksWidgetEntryView(0);
  sub_100009B0C(&qword_1000ACB90, type metadata accessor for BooksWidgetEntryView);
  sub_100009318();
  sub_1000810A8();
  v80 = v15;
  sub_100081158();
  sub_100080448();
  OpaqueTypeConformance2 = *(v9 + 16);
  v81 = v13;
  v27 = v8;
  OpaqueTypeConformance2(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = ObjCClassFromMetadata;
  v87 = objc_opt_self();
  v29 = [v87 bundleForClass:ObjCClassFromMetadata];
  v30 = v1;
  v86 = *(v1 + 16);
  v82 = v5;
  v79 = v7;
  v31 = v91;
  v86(v5, v7, v91);
  v32 = sub_100081268();
  v34 = v33;
  v35 = *(v30 + 8);
  v84 = v30 + 8;
  v85 = v35;
  v35(v7, v31);
  v36 = *(v107 + 8);
  v107 += 8;
  v83 = v36;
  v37 = v80;
  v36(v80, v27);
  v108 = v32;
  v109 = v34;
  v38 = sub_100005C98(&qword_1000ACBA0, &qword_1000ACB68, &qword_100085C88);
  v39 = sub_1000057D0();
  v40 = v101;
  v41 = v89;
  sub_100080AB8();

  (*(v92 + 8))(v41, v40);
  sub_100081158();
  v42 = v79;
  sub_100080448();
  OpaqueTypeConformance2(v81, v37, v27);
  v43 = [v87 bundleForClass:v88];
  v86(v82, v42, v31);
  v44 = v102;
  v45 = sub_100081268();
  v47 = v46;
  v85(v42, v31);
  v83(v37, v27);
  v112 = v45;
  v113 = v47;
  v108 = v101;
  v109 = &type metadata for String;
  v110 = v38;
  v111 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v39;
  v48 = v103;
  sub_100080A88();

  (*(v93 + 8))(v48, v44);
  sub_10000936C();
  sub_100005C98(&qword_1000ACBB0, &qword_1000ACBB8, &qword_100085CB0);
  LOBYTE(v47) = sub_100081348();
  sub_100002840(&qword_1000ACBC0, &qword_100085CB8);
  v49 = sub_100081038();
  v50 = *(v49 - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = (v50 + 104);
  v54 = 2 * v51;
  v103 = (2 * v51);
  v101 = 3 * v51;
  v55 = swift_allocObject();
  if (v47)
  {
    *(v55 + 16) = xmmword_100085C20;
    v56 = v55 + v52;
    v57 = *v53;
    (*v53)(v55 + v52, enum case for WidgetFamily.accessoryCircular(_:), v49);
    LODWORD(v93) = enum case for WidgetFamily.systemSmall(_:);
    v57(v56 + v51);
    LODWORD(v92) = enum case for WidgetFamily.systemMedium(_:);
    v57(v56 + v54);
    v58 = enum case for WidgetFamily.systemLarge(_:);
    v59 = v56 + 3 * v51;
  }

  else
  {
    *(v55 + 16) = xmmword_100085C10;
    v60 = v55 + v52;
    v57 = *v53;
    LODWORD(v93) = enum case for WidgetFamily.systemSmall(_:);
    v57(v55 + v52);
    LODWORD(v92) = enum case for WidgetFamily.systemMedium(_:);
    v57(v60 + v51);
    v58 = enum case for WidgetFamily.systemLarge(_:);
    v59 = v60 + v54;
  }

  LODWORD(v91) = v58;
  v57(v59);
  v108 = v102;
  v109 = &type metadata for String;
  v110 = OpaqueTypeConformance2;
  v111 = v107;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v106;
  v63 = v104;
  sub_100080A98();

  (*(v94 + 8))(v63, v62);
  v64 = [objc_opt_self() currentDevice];
  v65 = [v64 userInterfaceIdiom];

  sub_100002840(&qword_1000ACBC8, &qword_100085CC0);
  v66 = *(sub_100081068() - 8);
  v67 = *(v66 + 72);
  v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  if (v65 == 1)
  {
    *(swift_allocObject() + 16) = xmmword_100085A40;
    sub_100081048();
    sub_100081058();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_100085C00;
    sub_100081048();
  }

  sub_100002840(&qword_1000ACBC0, &qword_100085CB8);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100085C10;
  v70 = v69 + v52;
  v71 = *v53;
  (*v53)(v69 + v52, v93, v49);
  (v71)(v70 + v51, v92, v49);
  (v71)(&v103[v70], v91, v49);
  v108 = v106;
  v109 = v61;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v95;
  v74 = v99;
  v75 = v105;
  sub_100080AA8();

  (*(v96 + 8))(v75, v74);
  v108 = v74;
  v109 = v72;
  swift_getOpaqueTypeConformance2();
  v76 = v98;
  sub_100080AC8();
  return (*(v97 + 8))(v73, v76);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100009278();
  sub_100080F18();
  return 0;
}

unint64_t sub_100009278()
{
  result = qword_1000ACB60;
  if (!qword_1000ACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB60);
  }

  return result;
}

unint64_t sub_100009318()
{
  result = qword_1000ACB98;
  if (!qword_1000ACB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB98);
  }

  return result;
}

unint64_t sub_10000936C()
{
  result = qword_1000ACBA8;
  if (!qword_1000ACBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACBA8);
  }

  return result;
}

uint64_t sub_1000093C0(uint64_t a1)
{
  v2 = sub_1000807B8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100080928();
}

uint64_t sub_1000094A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000094F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000803D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16) >> 1;
    v11 = -2 - v10;
    if (-2 - v10 < 0)
    {
      v11 = -1;
    }

    if (v10 > 0x80000000)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }
}

double sub_1000095D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000803D8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2 * ~a2;
    result = 0.0;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0u;
  }

  return result;
}

void sub_1000096BC()
{
  sub_1000803D8();
  if (v0 <= 0x3F)
  {
    sub_100009740();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009740()
{
  if (!qword_1000ACC38)
  {
    v0 = sub_100081518();
    if (!v1)
    {
      atomic_store(v0, &qword_1000ACC38);
    }
  }
}

uint64_t sub_1000097B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100009834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000098A4()
{
  result = type metadata accessor for WidgetEntry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100009910()
{
  sub_100004FC8(&qword_1000ACB88, &qword_100085CA8);
  sub_100004FC8(&qword_1000ACB80, &qword_100085CA0);
  sub_100004FC8(&qword_1000ACB78, &qword_100085C98);
  sub_100004FC8(&qword_1000ACB70, &qword_100085C90);
  sub_100004FC8(&qword_1000ACB68, &qword_100085C88);
  sub_100005C98(&qword_1000ACBA0, &qword_1000ACB68, &qword_100085C88);
  sub_1000057D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009B70(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100009B88()
{
  result = qword_1000ACD38;
  if (!qword_1000ACD38)
  {
    sub_100004FC8(&qword_1000ACD30, &qword_100085E10);
    sub_100009C14();
    sub_100009D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD38);
  }

  return result;
}

unint64_t sub_100009C14()
{
  result = qword_1000ACD40;
  if (!qword_1000ACD40)
  {
    sub_100004FC8(&qword_1000ACD28, &qword_100085E08);
    sub_100009CD0();
    sub_100009B0C(&qword_1000ACD50, type metadata accessor for SmallWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD40);
  }

  return result;
}

unint64_t sub_100009CD0()
{
  result = qword_1000ACD48;
  if (!qword_1000ACD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD48);
  }

  return result;
}

unint64_t sub_100009D24()
{
  result = qword_1000ACD58;
  if (!qword_1000ACD58)
  {
    sub_100004FC8(&qword_1000ACD08, &qword_100085DE8);
    sub_100009B0C(&qword_1000ACD60, type metadata accessor for MediumWidgetView);
    sub_100009B0C(&qword_1000ACD68, type metadata accessor for LargeWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD58);
  }

  return result;
}

uint64_t sub_100009E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009F78(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A070;

  return v7(a1);
}

uint64_t sub_10000A070()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000810E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002840(&qword_1000ACD78, &qword_100085E58);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  if (qword_1000AC5F8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000806F8();
  sub_10000A480(v14, qword_1000ACB48);
  v15 = sub_1000806D8();
  v16 = sub_100081468();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v8;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Widget was awoken to fetch view model data.", v17, 2u);
    v8 = v25;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = sub_1000813E8();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  (*(v7 + 16))(v9, a1, v6);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v7 + 32))(v21 + v20, v9, v6);
  v22 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_10000AB58;
  v22[1] = v18;

  sub_1000066D0(0, 0, v13, &unk_100085E68, v21);
}

uint64_t sub_10000A480(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A4B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A4F4(uint64_t a1)
{
  v4 = *(sub_1000810E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000AB6C;

  return sub_1000069D0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10000A624(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB6C;

  return sub_100009F78(a1, v5);
}

uint64_t sub_10000A6DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000074F4;

  return sub_100009F78(a1, v5);
}

uint64_t *sub_10000A794(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000A7F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000A820()
{
  v1 = sub_1000810E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000A8FC(uint64_t a1)
{
  v4 = *(sub_1000810E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000074F4;

  return sub_100006284(a1, v6, v7, v1 + v5, v9, v10);
}

double sub_10000AA2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFELL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_10000AA5C(uint64_t result)
{
  v1 = *(result + 112) & 0x301 | 0xC000000000000000;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_10000AA80(uint64_t result)
{
  v1 = *(result + 112) & 0x301 | 0x8000000000000000;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_10000AAA4(uint64_t result)
{
  v1 = *(result + 112) & 0x301 | 0x4000000000000000;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

unint64_t sub_10000AACC()
{
  result = qword_1000ACD98;
  if (!qword_1000ACD98)
  {
    sub_100004FC8(&qword_1000ACDA0, &unk_100085EB0);
    sub_100009B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACD98);
  }

  return result;
}

__n128 sub_10000AB70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10000AB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000ABE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000AC74@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v70 = a2;
  v3 = sub_100002840(&qword_1000ACDB0, &qword_100085F70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v58[-v5];
  v7 = sub_100002840(&qword_1000ACDB8, &qword_100085F78);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v69 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v58[-v13];
  v15 = __chkstk_darwin(v12);
  v71 = &v58[-v16];
  v17 = sub_10005A0B8(v15);
  v67 = v18;
  v68 = v17;
  v19 = *(a1 + 88);
  v20 = *(a1 + 104);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v65 = v94;
  v66 = v92;
  v63 = v97;
  v64 = v96;
  v100 = v93;
  v99 = v95;
  v62 = sub_100080C38();
  sub_100080798();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v72 = v100;
  v31 = v99;
  v59 = v99;
  LOBYTE(v91[0]) = 0;
  *v6 = sub_100080A28();
  *(v6 + 1) = v20;
  v6[16] = 0;
  v61 = *(sub_100002840(&qword_1000ACDC0, &qword_100085F80) + 44);
  v98 = *(a1 + 48);
  v79[0] = v98;
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  v33 = *(a1 + 112);
  v32[7] = *(a1 + 96);
  v32[8] = v33;
  v32[9] = *(a1 + 128);
  v34 = *(a1 + 48);
  v32[3] = *(a1 + 32);
  v32[4] = v34;
  v35 = *(a1 + 80);
  v32[5] = *(a1 + 64);
  v32[6] = v35;
  v36 = *(a1 + 16);
  v32[1] = *a1;
  v32[2] = v36;
  sub_1000055FC(&v98, v91, &qword_1000ACDC8, &qword_100085FB0);
  sub_10000BFF8(a1, v91);
  sub_100002840(&qword_1000ACDC8, &qword_100085FB0);
  sub_100002840(&qword_1000ACDD0, &qword_100085FB8);
  sub_100005C98(&qword_1000ACDD8, &qword_1000ACDC8, &qword_100085FB0);
  sub_10000C030();
  sub_100080F28();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v6, v14, &qword_1000ACDB0, &qword_100085F70);
  v37 = &v14[*(v8 + 44)];
  v38 = v91[5];
  v37[4] = v91[4];
  v37[5] = v38;
  v37[6] = v91[6];
  v39 = v91[1];
  *v37 = v91[0];
  v37[1] = v39;
  v40 = v91[3];
  v37[2] = v91[2];
  v37[3] = v40;
  v41 = v71;
  sub_10000C1E0(v14, v71, &qword_1000ACDB8, &qword_100085F78);
  v42 = v41;
  v43 = v69;
  sub_10000C248(v42, v69);
  v45 = v67;
  v44 = v68;
  *&v73 = v68;
  *(&v73 + 1) = v67;
  v47 = v65;
  v46 = v66;
  *&v74 = v66;
  BYTE8(v74) = v72;
  *&v75 = v65;
  BYTE8(v75) = v31;
  v48 = v63;
  v49 = v64;
  *&v76 = v64;
  *(&v76 + 1) = v63;
  v50 = v62;
  LOBYTE(v77) = v62;
  *(&v77 + 1) = v24;
  *&v78[0] = v26;
  *(&v78[0] + 1) = v28;
  *&v78[1] = v30;
  BYTE8(v78[1]) = 0;
  v51 = v74;
  v52 = v70;
  *v70 = v73;
  v52[1] = v51;
  v53 = v75;
  v54 = v76;
  *(v52 + 89) = *(v78 + 9);
  v55 = v78[0];
  v52[4] = v77;
  v52[5] = v55;
  v52[2] = v53;
  v52[3] = v54;
  v56 = v52 + *(sub_100002840(&qword_1000ACE08, &unk_100085FD0) + 48);
  sub_10000C248(v43, v56);
  sub_1000055FC(&v73, v79, &qword_1000ACE10, &qword_100086460);
  sub_10000C2B8(v71);
  sub_10000C2B8(v43);
  v79[0] = v44;
  v79[1] = v45;
  v79[2] = v46;
  v80 = v72;
  v81 = v47;
  v82 = v59;
  v83 = v49;
  v84 = v48;
  v85 = v50;
  v86 = v24;
  v87 = v26;
  v88 = v28;
  v89 = v30;
  v90 = 0;
  return sub_100005B2C(v79, &qword_1000ACE10, &qword_100086460);
}

uint64_t sub_10000B164@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v35 = sub_100080B68();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACE00, &qword_100085FC8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_100002840(&qword_1000ACDE8, &qword_100085FC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v36 = sub_100002840(&qword_1000ACE18, &qword_100085FE0);
  v17 = *(v36 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v36);
  v20 = &v34 - v19;
  v21 = a1[3];
  v51 = a1[2];
  v52 = v21;
  v53 = a1[4];
  v54 = *(a1 + 80);
  v22 = a1[1];
  v49 = *a1;
  v50 = v22;
  *v12 = sub_100080A28();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v23 = sub_100002840(&qword_1000ACE20, &qword_100085FE8);
  sub_10000B55C(a2, &v49, &v12[*(v23 + 44)]);
  sub_100080F58();
  sub_1000808F8();
  sub_10000C1E0(v12, v16, &qword_1000ACE00, &qword_100085FC8);
  v24 = &v16[*(v13 + 36)];
  v25 = v47;
  *(v24 + 4) = v46;
  *(v24 + 5) = v25;
  *(v24 + 6) = v48;
  v26 = v43;
  *v24 = v42;
  *(v24 + 1) = v26;
  v27 = v45;
  *(v24 + 2) = v44;
  *(v24 + 3) = v27;
  v55 = v49;
  v56 = v50;
  v60 = v54;
  v58 = v52;
  v59 = v53;
  v57 = v51;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v28 = sub_10000C128();
  sub_100080E08();
  (*(v5 + 8))(v8, v35);
  sub_100005B2C(v16, &qword_1000ACDE8, &qword_100085FC0);
  if (sub_1000112D4())
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v29 = sub_100056778(1);
    v30 = v31;
  }

  v40 = v29;
  v41 = v30;
  v38 = v13;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v32 = v36;
  sub_100080DD8();

  return (*(v17 + 8))(v20, v32);
}

uint64_t sub_10000B55C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = sub_100002840(&qword_1000ACE28, &qword_100085FF0);
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  __chkstk_darwin(v5);
  v94 = &v83 - v7;
  v8 = sub_100002840(&qword_1000ACE30, &qword_100085FF8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v83 - v12;
  v91 = sub_100080308();
  v13 = *(v91 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v91);
  v92 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v83 - v17;
  v19 = type metadata accessor for BookCoverView();
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v23 = *(*(v90 - 8) + 64);
  v24 = __chkstk_darwin(v90);
  v84 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v83 - v27;
  __chkstk_darwin(v26);
  v93 = &v83 - v29;
  v30 = a1[3];
  v108 = a1[2];
  v109 = v30;
  v110 = a1[4];
  v31 = a1[1];
  v106 = *a1;
  v107 = v31;
  sub_100025138(a2, v18);
  v32 = *(a2 + 48);
  v102 = *(a2 + 32);
  v103 = v32;
  v104 = *(a2 + 64);
  v105 = *(a2 + 80);
  v33 = *(a2 + 16);
  v100 = *a2;
  v101 = v33;
  v34 = sub_1000112D4();
  if (*(&v110 + 1))
  {
    if (v110 == v102)
    {
      v35 = 1;
    }

    else
    {
      v35 = sub_100081618();
    }
  }

  else
  {
    v35 = 0;
  }

  *v22 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 32))(v22 + v19[5], v18, v91);
  *(v22 + v19[6]) = v34 & 1;
  v36 = v22 + v19[7];
  v37 = *(a2 + 48);
  *(v36 + 2) = *(a2 + 32);
  *(v36 + 3) = v37;
  *(v36 + 4) = *(a2 + 64);
  v36[80] = *(a2 + 80);
  v38 = *(a2 + 16);
  *v36 = *a2;
  *(v36 + 1) = v38;
  *(v22 + v19[8]) = v35 & 1;
  *(v22 + v19[9]) = 0;
  sub_10000C328(a2, v99);
  v39 = sub_100080C38();
  v40 = *(a1 + 14);
  sub_100080798();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_10000C384(v22, v28);
  v49 = &v28[*(v90 + 36)];
  *v49 = v39;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_10000C1E0(v28, v93, &qword_1000ACE38, &qword_100086000);
  v50 = sub_100025138(a2, v92);
  __chkstk_darwin(v50);
  *(&v83 - 2) = a2;
  *(&v83 - 1) = a1;
  type metadata accessor for LabelView();
  sub_10000C3F0(&qword_1000ACE40, type metadata accessor for LabelView);
  sub_100080CE8();
  v99[0] = v100;
  v96 = v100;
  sub_1000055FC(v99, v95, &qword_1000ACE48, &unk_100086040);
  v51 = 0;
  v97 = sub_100056928(0);
  v98 = v52;
  v53 = _swiftEmptyArrayStorage;
LABEL_7:
  v54 = &v96 + 2 * v51 + 1;
  while (++v51 != 3)
  {
    v55 = v54 + 2;
    v56 = *v54;
    v54 += 2;
    if (v56)
    {
      v57 = *(v55 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_10003EE4C(0, *(v53 + 2) + 1, 1, v53);
      }

      v59 = *(v53 + 2);
      v58 = *(v53 + 3);
      if (v59 >= v58 >> 1)
      {
        v53 = sub_10003EE4C((v58 > 1), v59 + 1, 1, v53);
      }

      *(v53 + 2) = v59 + 1;
      v60 = &v53[16 * v59];
      *(v60 + 4) = v57;
      *(v60 + 5) = v56;
      goto LABEL_7;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v62 = 0;
  v63 = *(v53 + 2);
  v64 = _swiftEmptyArrayStorage;
LABEL_16:
  v65 = &v53[16 * v62 + 40];
  while (1)
  {
    if (v63 == v62)
    {

      v95[0] = v64;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
      v72 = sub_100081128();
      v74 = v73;

      v95[0] = v72;
      v95[1] = v74;
      sub_100005C98(&qword_1000ACE60, &qword_1000ACE28, &qword_100085FF0);
      sub_1000057D0();
      v75 = v86;
      v76 = v87;
      v77 = v94;
      sub_100080DD8();

      (*(v85 + 8))(v77, v75);
      v78 = v93;
      v79 = v84;
      sub_1000055FC(v93, v84, &qword_1000ACE38, &qword_100086000);
      v80 = v88;
      sub_1000055FC(v76, v88, &qword_1000ACE30, &qword_100085FF8);
      v81 = v89;
      sub_1000055FC(v79, v89, &qword_1000ACE38, &qword_100086000);
      v82 = sub_100002840(&qword_1000ACE68, &qword_100086050);
      sub_1000055FC(v80, v81 + *(v82 + 48), &qword_1000ACE30, &qword_100085FF8);
      sub_100005B2C(v76, &qword_1000ACE30, &qword_100085FF8);
      sub_100005B2C(v78, &qword_1000ACE38, &qword_100086000);
      sub_100005B2C(v80, &qword_1000ACE30, &qword_100085FF8);
      return sub_100005B2C(v79, &qword_1000ACE38, &qword_100086000);
    }

    if (v62 >= *(v53 + 2))
    {
      break;
    }

    ++v62;
    v67 = *(v65 - 1);
    v66 = *v65;
    v65 += 16;
    v68 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v68 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v68)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v95[0] = v64;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v64[2] + 1, 1);
        v64 = v95[0];
      }

      v70 = v64[2];
      v69 = v64[3];
      if (v70 >= v69 >> 1)
      {
        result = sub_100061B34((v69 > 1), v70 + 1, 1);
        v64 = v95[0];
      }

      v64[2] = v70 + 1;
      v71 = &v64[2 * v70];
      v71[4] = v67;
      v71[5] = v66;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

int *sub_10000BE40@<X0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_100056928(1);
  v6 = v5;
  v7 = a1[6];
  v17[0] = a1[5];
  v17[1] = v7;
  v8 = a1[8];
  v18 = a1[7];
  v19 = v8;
  v9 = *(&v18 + 1);
  sub_10000C438(v17, &v16);
  v10 = sub_100080B08();
  v11 = *&v17[0];
  v12 = v10;
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for LabelView();
  v14 = (a2 + result[5]);
  *v14 = v4;
  v14[1] = v6;
  *(a2 + result[6]) = v9;
  v15 = a2 + result[7];
  *v15 = v12;
  *(v15 + 1) = v11;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_10000BF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v12 = v1[6];
  v13 = v3;
  v14 = v1[8];
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v7 = sub_100080A78();
  v8 = v12;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  v9 = sub_100002840(&qword_1000ACDA8, &qword_100085F68);
  return sub_10000AC74(v11, (a1 + *(v9 + 44)));
}

uint64_t sub_10000BFA0()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[11];

  v4 = v0[17];

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10000C030()
{
  result = qword_1000ACDE0;
  if (!qword_1000ACDE0)
  {
    sub_100004FC8(&qword_1000ACDD0, &qword_100085FB8);
    sub_100004FC8(&qword_1000ACDE8, &qword_100085FC0);
    sub_10000C128();
    swift_getOpaqueTypeConformance2();
    sub_10000C3F0(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACDE0);
  }

  return result;
}

unint64_t sub_10000C128()
{
  result = qword_1000ACDF0;
  if (!qword_1000ACDF0)
  {
    sub_100004FC8(&qword_1000ACDE8, &qword_100085FC0);
    sub_100005C98(&qword_1000ACDF8, &qword_1000ACE00, &qword_100085FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACDF0);
  }

  return result;
}

uint64_t sub_10000C1E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002840(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACDB8, &qword_100085F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C2B8(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACDB8, &qword_100085F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C3F0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10000C470(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C4CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000C584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000807B8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100080F68();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10000C6A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000807B8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100080F68();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10000C7C4()
{
  result = sub_1000807B8();
  if (v1 <= 0x3F)
  {
    result = sub_100080F68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000C958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000CA1C()
{
  result = type metadata accessor for TodayReadingGoalView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000CAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_100080F48();
  a3[1] = v6;
  v7 = sub_100002840(&qword_1000ACFC0, &qword_100086128);
  return sub_10000CB14(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_10000CB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100002840(&qword_1000ACFC8, &qword_100086130);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100002840(&qword_1000ACFD0, &qword_100086138);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  sub_1000807F8();
  sub_10000CD68(v19, v20, v21);
  v22 = a1 + *(type metadata accessor for TodayReadingGoalView(0) + 20);
  v23 = *(v22 + *(type metadata accessor for TodayReadingGoalView.ViewConfiguration(0) + 48));
  *v12 = sub_100080A68();
  *(v12 + 1) = v23;
  v12[16] = 0;
  v24 = sub_100002840(&qword_1000ACFD8, &qword_100086140);
  sub_10000D418(a1, a2, &v12[*(v24 + 44)]);
  sub_1000055FC(v19, v17, &qword_1000ACFD0, &qword_100086138);
  sub_1000055FC(v12, v10, &qword_1000ACFC8, &qword_100086130);
  sub_1000055FC(v17, a3, &qword_1000ACFD0, &qword_100086138);
  v25 = sub_100002840(&qword_1000ACFE0, &qword_100086148);
  sub_1000055FC(v10, a3 + *(v25 + 48), &qword_1000ACFC8, &qword_100086130);
  sub_100005B2C(v12, &qword_1000ACFC8, &qword_100086130);
  sub_100005B2C(v19, &qword_1000ACFD0, &qword_100086138);
  sub_100005B2C(v10, &qword_1000ACFC8, &qword_100086130);
  return sub_100005B2C(v17, &qword_1000ACFD0, &qword_100086138);
}

uint64_t sub_10000CD68@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_100080308();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AD0D0, &qword_100086330);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v78 - v14;
  v16 = sub_100002840(&qword_1000ACFD0, &qword_100086138);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v83 = v78 - v18;
  v19 = v3[3];
  v114 = v3[2];
  v115 = v19;
  v116 = v3[4];
  v20 = v3[1];
  v112 = *v3;
  v113 = v20;
  sub_100025F34(v10);
  v85 = a2;
  v86 = a3;
  sub_100002840(&qword_1000AD0D8, &qword_100086338);
  sub_10000EF3C();
  v21 = sub_100080CE8();
  v91[7] = sub_100026588(v21);
  v91[8] = v22;
  v23 = v3[3];
  v109 = v3[2];
  v110 = v23;
  v111 = v3[4];
  v24 = v3[1];
  v107 = *v3;
  v108 = v24;
  v91[9] = sub_100025984();
  v91[10] = v25;
  v26 = sub_100062184();
  v78[1] = v16;
  v78[2] = a1;
  v81 = v11;
  v82 = v3;
  v79 = v15;
  v80 = v12;
  if (v26)
  {
    v27 = v3[3];
    v104 = v3[2];
    v105 = v27;
    v106 = v3[4];
    v28 = v3[1];
    v102 = *v3;
    v103 = v28;
    result = sub_100057040();
  }

  else
  {
    result = sub_100025CB4();
  }

  v31 = 0;
  v91[11] = result;
  v91[12] = v30;
  v32 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v31 <= 3)
  {
    v33 = 3;
  }

  else
  {
    v33 = v31;
  }

  v34 = v33 + 1;
  v35 = 16 * v31 + 40;
  while (v31 != 3)
  {
    if (v34 == ++v31)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v36 = v35 + 16;
    v37 = *(&v91[3] + v35);
    v35 += 16;
    if (v37)
    {
      v38 = *(v91 + v36);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10003EE4C(0, *(v32 + 2) + 1, 1, v32);
        v32 = result;
      }

      v40 = *(v32 + 2);
      v39 = *(v32 + 3);
      if (v40 >= v39 >> 1)
      {
        result = sub_10003EE4C((v39 > 1), v40 + 1, 1, v32);
        v32 = result;
      }

      *(v32 + 2) = v40 + 1;
      v41 = &v32[16 * v40];
      *(v41 + 4) = v38;
      *(v41 + 5) = v37;
      goto LABEL_5;
    }
  }

  v78[0] = sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v42 = 0;
  v43 = *(v32 + 2);
  v44 = _swiftEmptyArrayStorage;
LABEL_18:
  v45 = &v32[16 * v42 + 40];
  while (v43 != v42)
  {
    if (v42 >= *(v32 + 2))
    {
      goto LABEL_47;
    }

    ++v42;
    v47 = *(v45 - 1);
    v46 = *v45;
    v45 += 16;
    v48 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v48 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v97 = v44;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v44[2] + 1, 1);
        v44 = v97;
      }

      v50 = v44[2];
      v49 = v44[3];
      if (v50 >= v49 >> 1)
      {
        result = sub_100061B34((v49 > 1), v50 + 1, 1);
        v44 = v97;
      }

      v44[2] = v50 + 1;
      v51 = &v44[2 * v50];
      v51[4] = v47;
      v51[5] = v46;
      goto LABEL_18;
    }
  }

  *&v97 = v44;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
  v52 = sub_100081128();
  v54 = v53;

  *&v97 = v52;
  *(&v97 + 1) = v54;
  sub_100005C98(&qword_1000AD0E8, &qword_1000AD0D0, &qword_100086330);
  sub_1000057D0();
  v55 = v81;
  v56 = v79;
  sub_100080DD8();

  v57 = (*(v80 + 8))(v56, v55);
  v88 = sub_100026588(v57);
  v89 = v58;
  v59 = v82;
  v60 = v82[3];
  v99 = v82[2];
  v100 = v60;
  v101 = v82[4];
  v61 = v82[1];
  v97 = *v82;
  v98 = v61;
  v90 = sub_100025984();
  v91[0] = v62;
  if (sub_100062184())
  {
    v63 = v59[3];
    v94 = v59[2];
    v95 = v63;
    v96 = v59[4];
    v64 = v59[1];
    v92 = *v59;
    v93 = v64;
    result = sub_100057040();
  }

  else
  {
    result = sub_100025CB4();
  }

  v66 = 0;
  v91[1] = result;
  v91[2] = v65;
  v67 = _swiftEmptyArrayStorage;
LABEL_33:
  if (v66 <= 3)
  {
    v68 = 3;
  }

  else
  {
    v68 = v66;
  }

  v69 = v68 + 1;
  v70 = 16 * v66 + 40;
  while (v66 != 3)
  {
    if (v69 == ++v66)
    {
      goto LABEL_48;
    }

    v71 = v70 + 16;
    v72 = *&v87[v70];
    v70 += 16;
    if (v72)
    {
      v73 = *&v84[v71];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10003EE4C(0, *(v67 + 2) + 1, 1, v67);
        v67 = result;
      }

      v75 = *(v67 + 2);
      v74 = *(v67 + 3);
      if (v75 >= v74 >> 1)
      {
        result = sub_10003EE4C((v74 > 1), v75 + 1, 1, v67);
        v67 = result;
      }

      *(v67 + 2) = v75 + 1;
      v76 = &v67[16 * v75];
      *(v76 + 4) = v73;
      *(v76 + 5) = v72;
      goto LABEL_33;
    }
  }

  swift_arrayDestroy();
  v77 = v83;
  sub_1000808A8();

  return sub_100005B2C(v77, &qword_1000ACFD0, &qword_100086138);
}

uint64_t sub_10000D418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v97 = a3;
  v90 = type metadata accessor for LabelView();
  v4 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v6 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_100002840(&qword_1000ACFE8, &qword_100086150);
  v7 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v92 = &v87 - v8;
  v9 = sub_100002840(&qword_1000ACFF0, &qword_100086158);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v87 - v13;
  v14 = type metadata accessor for ReadingGoalView(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = __chkstk_darwin(v14);
  v95 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v87 - v18);
  v20 = sub_100002840(&qword_1000ACFF8, &qword_100086160);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v87 - v22;
  v24 = sub_100002840(&qword_1000AD000, &qword_100086168);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v91 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v87 - v29;
  __chkstk_darwin(v28);
  v98 = &v87 - v31;
  *v23 = sub_100080A28();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v32 = sub_100002840(&qword_1000AD008, &qword_100086170);
  sub_10000DC48(a1, &v23[*(v32 + 44)]);
  v33 = sub_100080C08();
  v34 = sub_100080C28();
  sub_100080C28();
  if (sub_100080C28() != v33)
  {
    v34 = sub_100080C28();
  }

  v35 = (a1 + *(type metadata accessor for TodayReadingGoalView(0) + 20));
  v88 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  v36 = *(v35 + *(v88 + 48));
  sub_100080798();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10000C1E0(v23, v30, &qword_1000ACFF8, &qword_100086160);
  v45 = &v30[*(v24 + 36)];
  *v45 = v34;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  sub_10000C1E0(v30, v98, &qword_1000AD000, &qword_100086168);
  v47 = *(a1 + 32);
  v46 = *(a1 + 40);
  v48 = v14[9];
  v49 = sub_100080808();
  (*(*(v49 - 8) + 16))(v19 + v48, v89, v49);
  *(v19 + v14[6]) = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  *v19 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  swift_storeEnumTagMultiPayload();
  v50 = v19 + v14[5];
  *v50 = swift_getKeyPath();
  *(v50 + 1) = 0;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  v50[32] = 0;
  v51 = (v19 + v14[7]);
  *v51 = v47;
  v51[1] = v46;
  v52 = v19 + v14[8];
  v53 = enum case for Font.TextStyle.callout(_:);
  v54 = sub_100080CD8();
  (*(*(v54 - 8) + 104))(v52, v53, v54);
  v55 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
  v56 = v55[5];
  v57 = enum case for Font.Design.rounded(_:);
  v58 = sub_100080C58();
  (*(*(v58 - 8) + 104))(&v52[v56], v57, v58);
  v59 = v55[6];

  sub_100080C88();
  *&v52[v59] = v60;
  *&v52[v55[7]] = 0x4010000000000000;
  *&v52[v55[8]] = 0xC03A000000000000;
  *&v52[v55[9]] = 0;
  v61 = v19;
  if (sub_100062184())
  {
    v62 = *(a1 + 48);
    v101 = *(a1 + 32);
    v102 = v62;
    v103 = *(a1 + 64);
    v63 = *(a1 + 16);
    v99 = *a1;
    v100 = v63;
    v64 = sub_100057040();
  }

  else
  {
    v64 = sub_100025CB4();
  }

  v66 = v64;
  v67 = v65;
  v68 = *(v35 + *(v88 + 32));

  v69 = sub_100080B08();
  v70 = *v35;
  v71 = v69;
  *v6 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v72 = v90;
  v73 = (v6 + *(v90 + 20));
  *v73 = v66;
  v73[1] = v67;
  *(v6 + *(v72 + 24)) = v68;
  v74 = v6 + *(v72 + 28);
  *v74 = v71;
  *(v74 + 1) = v70;
  *(v74 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v76 = v92;
  sub_10000EB00(v6, v92, type metadata accessor for LabelView);
  v77 = v76 + *(v93 + 36);
  *v77 = KeyPath;
  *(v77 + 8) = 1;
  sub_10000EB68();
  v78 = v94;
  sub_100080DE8();
  sub_100005B2C(v76, &qword_1000ACFE8, &qword_100086150);
  v79 = v98;
  v80 = v91;
  sub_1000055FC(v98, v91, &qword_1000AD000, &qword_100086168);
  v81 = v61;
  v82 = v95;
  sub_10000EC78(v61, v95, type metadata accessor for ReadingGoalView);
  v83 = v96;
  sub_1000055FC(v78, v96, &qword_1000ACFF0, &qword_100086158);
  v84 = v97;
  sub_1000055FC(v80, v97, &qword_1000AD000, &qword_100086168);
  v85 = sub_100002840(&qword_1000AD028, &qword_100086250);
  sub_10000EC78(v82, v84 + *(v85 + 48), type metadata accessor for ReadingGoalView);
  sub_1000055FC(v83, v84 + *(v85 + 64), &qword_1000ACFF0, &qword_100086158);
  sub_100005B2C(v78, &qword_1000ACFF0, &qword_100086158);
  sub_10000EEC4(v81, type metadata accessor for ReadingGoalView);
  sub_100005B2C(v79, &qword_1000AD000, &qword_100086168);
  sub_100005B2C(v83, &qword_1000ACFF0, &qword_100086158);
  sub_10000EEC4(v82, type metadata accessor for ReadingGoalView);
  return sub_100005B2C(v80, &qword_1000AD000, &qword_100086168);
}

uint64_t sub_10000DC48@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100080B68();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100002840(&qword_1000AD030, &qword_100086258);
  v8 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v10 = &v54 - v9;
  v11 = sub_100002840(&qword_1000AD038, &qword_100086260);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v14 = &v54 - v13;
  v63 = sub_100002840(&qword_1000AD040, &qword_100086268);
  v61 = *(v63 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v63);
  v54 = &v54 - v16;
  v17 = sub_100002840(&qword_1000AD048, &qword_100086270);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v59 = &v54 - v22;
  v23 = sub_100002840(&qword_1000AD050, &qword_100086278);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v62 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v54 - v27;
  *&v66 = sub_100057F6C();
  *(&v66 + 1) = v29;
  sub_10000ECE0();
  v60 = v28;
  sub_100080DE8();

  v30 = a1[3];
  v68 = a1[2];
  v69 = v30;
  v70 = a1[4];
  v31 = a1[1];
  v66 = *a1;
  v67 = v31;
  v32 = sub_100025984();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    *v10 = sub_100080A28();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v36 = sub_100002840(&qword_1000AD068, &qword_100086288);
    sub_10000E234(a1, v34, v35, &v10[*(v36 + 44)]);

    v37 = v7;
    sub_100080B38();
    v38 = sub_100005C98(&qword_1000AD070, &qword_1000AD030, &qword_100086258);
    v39 = v56;
    v40 = v21;
    v41 = a2;
    v42 = v38;
    v43 = v55;
    sub_100080E08();
    (*(v39 + 8))(v37, v4);
    sub_100005B2C(v10, &qword_1000AD030, &qword_100086258);
    v64 = v43;
    v65 = v42;
    a2 = v41;
    v21 = v40;
    swift_getOpaqueTypeConformance2();
    v44 = v54;
    v45 = v58;
    sub_100080DE8();
    (*(v57 + 8))(v14, v45);
    v46 = v44;
    v47 = v59;
    sub_10000C1E0(v46, v59, &qword_1000AD040, &qword_100086268);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v59;
  }

  (*(v61 + 56))(v47, v48, 1, v63);
  v49 = v60;
  v50 = v62;
  sub_1000055FC(v60, v62, &qword_1000AD050, &qword_100086278);
  sub_1000055FC(v47, v21, &qword_1000AD048, &qword_100086270);
  sub_1000055FC(v50, a2, &qword_1000AD050, &qword_100086278);
  v51 = sub_100002840(&qword_1000AD060, &qword_100086280);
  v52 = a2 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_1000055FC(v21, a2 + *(v51 + 64), &qword_1000AD048, &qword_100086270);
  sub_100005B2C(v47, &qword_1000AD048, &qword_100086270);
  sub_100005B2C(v49, &qword_1000AD050, &qword_100086278);
  sub_100005B2C(v21, &qword_1000AD048, &qword_100086270);
  return sub_100005B2C(v50, &qword_1000AD050, &qword_100086278);
}

uint64_t sub_10000E234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v64 = a4;
  v61 = a2;
  v5 = type metadata accessor for LabelView();
  v6 = *(v5 - 8);
  v60 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v62 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v57[-v10];
  v12 = sub_100002840(&qword_1000AD078, &qword_100086290);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v66 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v57[-v17];
  v19 = a1 + *(type metadata accessor for TodayReadingGoalView(0) + 20);
  v20 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  v21 = (v19 + v20[11]);
  v22 = *v21;
  v23 = v21[1];

  v24 = sub_100080E88();
  v25 = v20[9];
  v65 = *(v19 + v20[8]);
  v26 = *(v19 + v25);
  v27 = sub_100080CA8();
  KeyPath = swift_getKeyPath();
  v29 = *(v19 + v20[10]);
  v67 = v24;
  v68 = KeyPath;
  v69 = v27;
  v70 = v29;
  sub_100002840(&qword_1000AD080, &qword_1000862C8);
  sub_10000ED3C();
  sub_100080D48();

  v30 = v20[7];
  v31 = *(sub_100002840(&qword_1000AD0C0, &qword_1000862E8) + 36);
  v32 = sub_100080F68();
  (*(*(v32 - 8) + 16))(&v18[v31], v19 + v30, v32);
  v33 = v20[5];
  v34 = swift_getKeyPath();
  v35 = &v18[*(v13 + 44)];
  v59 = v18;
  v36 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
  v37 = sub_1000807B8();
  (*(*(v37 - 8) + 16))(v35 + v36, v19 + v33, v37);
  *v35 = v34;
  v38 = v65;
  v39 = sub_100080D18();
  v41 = v40;
  v58 = v42;
  v44 = v43;
  *v11 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v45 = v60;
  v46 = (v11 + *(v60 + 28));
  v47 = v63;
  *v46 = v61;
  v46[1] = v47;
  *(v11 + *(v45 + 32)) = v38;
  v48 = v11 + *(v45 + 36);
  *v48 = 0;
  *(v48 + 1) = 0;
  *(v48 + 8) = 256;
  v49 = v66;
  sub_1000055FC(v18, v66, &qword_1000AD078, &qword_100086290);
  v50 = v62;
  sub_10000EC78(v11, v62, type metadata accessor for LabelView);
  v51 = v49;
  v52 = v64;
  sub_1000055FC(v51, v64, &qword_1000AD078, &qword_100086290);
  v53 = sub_100002840(&qword_1000AD0C8, &qword_100086328);
  v54 = v52 + *(v53 + 48);
  v55 = v52;
  *v54 = v39;
  *(v54 + 8) = v41;
  LOBYTE(v52) = v58 & 1;
  *(v54 + 16) = v58 & 1;
  *(v54 + 24) = v44;
  sub_10000EC78(v50, v55 + *(v53 + 64), type metadata accessor for LabelView);

  sub_10000EEB4(v39, v41, v52);

  sub_10000EEC4(v11, type metadata accessor for LabelView);
  sub_100005B2C(v59, &qword_1000AD078, &qword_100086290);
  sub_10000EEC4(v50, type metadata accessor for LabelView);
  sub_10000EF24(v39, v41, v52);

  return sub_100005B2C(v66, &qword_1000AD078, &qword_100086290);
}

double sub_10000E6D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100080E38();
  sub_100080F48();
  sub_1000807E8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_10000E76C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000EC78(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayReadingGoalView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000EB00(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TodayReadingGoalView);
  *a2 = sub_10000E9EC;
  a2[1] = v7;
  return result;
}

uint64_t sub_10000E880()
{
  v1 = (type metadata accessor for TodayReadingGoalView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 32);

  v6 = *(v0 + v3 + 48);

  v7 = *(v0 + v3 + 72);

  v8 = v0 + v3 + v1[7];
  v9 = type metadata accessor for TodayReadingGoalView.ViewConfiguration(0);
  v10 = v9[5];
  v11 = sub_1000807B8();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = v9[7];
  v13 = sub_100080F68();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = *(v8 + v9[8]);

  v15 = *(v8 + v9[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000E9EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TodayReadingGoalView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000CAB4(a1, v6, a2);
}

uint64_t sub_10000EA7C@<X0>(void *a1@<X8>)
{
  result = sub_1000809B8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10000EAAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100080968();
  *a1 = result;
  return result;
}

uint64_t sub_10000EB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000EB68()
{
  result = qword_1000AD010;
  if (!qword_1000AD010)
  {
    sub_100004FC8(&qword_1000ACFE8, &qword_100086150);
    sub_10000EC20();
    sub_100005C98(&qword_1000AD018, &qword_1000AD020, &qword_100086248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD010);
  }

  return result;
}

unint64_t sub_10000EC20()
{
  result = qword_1000ACE40;
  if (!qword_1000ACE40)
  {
    type metadata accessor for LabelView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACE40);
  }

  return result;
}

uint64_t sub_10000EC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000ECE0()
{
  result = qword_1000AD058;
  if (!qword_1000AD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD058);
  }

  return result;
}

unint64_t sub_10000ED3C()
{
  result = qword_1000AD088;
  if (!qword_1000AD088)
  {
    sub_100004FC8(&qword_1000AD080, &qword_1000862C8);
    sub_10000EDF4();
    sub_100005C98(&qword_1000AD0B0, &qword_1000AD0B8, &qword_1000862E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD088);
  }

  return result;
}

unint64_t sub_10000EDF4()
{
  result = qword_1000AD090;
  if (!qword_1000AD090)
  {
    sub_100004FC8(&qword_1000AD098, &qword_1000862D0);
    sub_100005C98(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD090);
  }

  return result;
}

uint64_t sub_10000EEB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000EEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000EF24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_10000EF34@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000E6D0(a1);
}

unint64_t sub_10000EF3C()
{
  result = qword_1000AD0E0;
  if (!qword_1000AD0E0)
  {
    sub_100004FC8(&qword_1000AD0D8, &qword_100086338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD0E0);
  }

  return result;
}

uint64_t sub_10000F030@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v68 = a2;
  v3 = sub_100002840(&qword_1000AD108, &qword_100086400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v57[-v5];
  v7 = sub_100002840(&qword_1000AD110, &qword_100086408);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v67 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v57[-v13];
  v15 = __chkstk_darwin(v12);
  v69 = &v57[-v16];
  v17 = sub_10005A0B8(v15);
  v65 = v18;
  v66 = v17;
  v19 = *(a1 + 88);
  v20 = *(a1 + 104);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v63 = v93;
  v64 = v91;
  v61 = v96;
  v62 = v95;
  v99 = v92;
  v98 = v94;
  v71 = sub_100080C38();
  sub_100080798();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v70 = v99;
  v31 = v98;
  v58 = v98;
  LOBYTE(v90[0]) = 0;
  *v6 = sub_100080A08();
  *(v6 + 1) = v20;
  v6[16] = 0;
  v60 = *(sub_100002840(&qword_1000AD118, &qword_100086410) + 44);
  v97 = *(a1 + 48);
  v78[0] = v97;
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  v33 = *(a1 + 112);
  v32[7] = *(a1 + 96);
  v32[8] = v33;
  v32[9] = *(a1 + 128);
  v34 = *(a1 + 48);
  v32[3] = *(a1 + 32);
  v32[4] = v34;
  v35 = *(a1 + 80);
  v32[5] = *(a1 + 64);
  v32[6] = v35;
  v36 = *(a1 + 16);
  v32[1] = *a1;
  v32[2] = v36;
  sub_1000055FC(&v97, v90, &qword_1000ACDC8, &qword_100085FB0);
  sub_1000103A4(a1, v90);
  sub_100002840(&qword_1000ACDC8, &qword_100085FB0);
  sub_100002840(&qword_1000AD120, &qword_100086448);
  sub_100005C98(&qword_1000ACDD8, &qword_1000ACDC8, &qword_100085FB0);
  sub_1000103DC();
  sub_100080F28();
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v6, v14, &qword_1000AD108, &qword_100086400);
  v37 = &v14[*(v8 + 44)];
  v38 = v90[5];
  v37[4] = v90[4];
  v37[5] = v38;
  v37[6] = v90[6];
  v39 = v90[1];
  *v37 = v90[0];
  v37[1] = v39;
  v40 = v90[3];
  v37[2] = v90[2];
  v37[3] = v40;
  v41 = v69;
  sub_10000C1E0(v14, v69, &qword_1000AD110, &qword_100086408);
  v42 = v67;
  sub_100010508(v41, v67);
  v44 = v65;
  v43 = v66;
  *&v72 = v66;
  *(&v72 + 1) = v65;
  v46 = v63;
  v45 = v64;
  *&v73 = v64;
  BYTE8(v73) = v70;
  *&v74 = v63;
  BYTE8(v74) = v31;
  v47 = v61;
  v48 = v62;
  *&v75 = v62;
  *(&v75 + 1) = v61;
  LOBYTE(v76) = v71;
  *(&v76 + 1) = v24;
  *&v77[0] = v26;
  *(&v77[0] + 1) = v28;
  *&v77[1] = v30;
  BYTE8(v77[1]) = 0;
  v49 = v73;
  v50 = v68;
  *v68 = v72;
  v50[1] = v49;
  v51 = v74;
  v52 = v75;
  *(v50 + 89) = *(v77 + 9);
  v53 = v77[0];
  v50[4] = v76;
  v50[5] = v53;
  v50[2] = v51;
  v50[3] = v52;
  v54 = sub_100002840(&qword_1000AD140, &qword_100086458);
  sub_100010508(v42, v50 + *(v54 + 48));
  v55 = v50 + *(v54 + 64);
  *v55 = 0;
  v55[8] = 0;
  sub_1000055FC(&v72, v78, &qword_1000ACE10, &qword_100086460);
  sub_100010578(v69);
  sub_100010578(v42);
  v78[0] = v43;
  v78[1] = v44;
  v78[2] = v45;
  v79 = v70;
  v80 = v46;
  v81 = v58;
  v82 = v48;
  v83 = v47;
  v84 = v71;
  v85 = v24;
  v86 = v26;
  v87 = v28;
  v88 = v30;
  v89 = 0;
  return sub_100005B2C(v78, &qword_1000ACE10, &qword_100086460);
}

uint64_t sub_10000F52C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v27 = sub_100080B68();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AD130, &qword_100086450);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v28 = sub_100002840(&qword_1000AD148, &qword_100086468);
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  v17 = a1[3];
  v36 = a1[2];
  v37 = v17;
  v38 = a1[4];
  v39 = *(a1 + 80);
  v18 = a1[1];
  v34 = *a1;
  v35 = v18;
  *v12 = sub_100080A68();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v19 = sub_100002840(&qword_1000AD150, &qword_100086470);
  sub_10000F8B4(a2, &v34, &v12[*(v19 + 44)]);
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v40 = v34;
  v41 = v35;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v20 = sub_100005C98(&qword_1000AD138, &qword_1000AD130, &qword_100086450);
  sub_100080E08();
  (*(v5 + 8))(v8, v27);
  sub_100005B2C(v12, &qword_1000AD130, &qword_100086450);
  if (sub_1000112D4())
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v21 = sub_100056778(1);
    v22 = v23;
  }

  v32 = v21;
  v33 = v22;
  v30 = v9;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v24 = v28;
  sub_100080DD8();

  return (*(v13 + 8))(v16, v24);
}

uint64_t sub_10000F8B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = sub_100002840(&qword_1000AD158, &qword_100086478);
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  __chkstk_darwin(v5);
  v89 = &v78 - v7;
  v8 = sub_100002840(&qword_1000AD160, &unk_100086480);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v83 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v78 - v12;
  v85 = sub_100080308();
  v13 = *(v85 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v85);
  v87 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v78 - v17;
  v19 = type metadata accessor for BookCoverView();
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_100002840(&qword_1000AD168, &qword_100088190);
  v23 = *(*(v86 - 8) + 64);
  v24 = __chkstk_darwin(v86);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v78 - v27;
  __chkstk_darwin(v26);
  v88 = &v78 - v29;
  v30 = a1[3];
  v101[3] = a1[2];
  v101[4] = v30;
  v102 = a1[4];
  v31 = a1[1];
  v101[1] = *a1;
  v101[2] = v31;
  sub_100025138(a2, v18);
  v32 = *(a2 + 48);
  v97 = *(a2 + 32);
  v98 = v32;
  v99 = *(a2 + 64);
  v100 = *(a2 + 80);
  v33 = *(a2 + 16);
  v95 = *a2;
  v96 = v33;
  v34 = sub_1000112D4();
  if (*(&v102 + 1))
  {
    if (v102 == v97)
    {
      v35 = 1;
    }

    else
    {
      v35 = sub_100081618();
    }
  }

  else
  {
    v35 = 0;
  }

  *v22 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 32))(v22 + v19[5], v18, v85);
  *(v22 + v19[6]) = v34 & 1;
  v36 = v22 + v19[7];
  v37 = *(a2 + 48);
  *(v36 + 2) = *(a2 + 32);
  *(v36 + 3) = v37;
  *(v36 + 4) = *(a2 + 64);
  v36[80] = *(a2 + 80);
  v38 = *(a2 + 16);
  *v36 = *a2;
  *(v36 + 1) = v38;
  *(v22 + v19[8]) = v35 & 1;
  *(v22 + v19[9]) = 0;
  sub_10000C328(a2, v94);
  sub_100080F48();
  v77 = v39;
  sub_1000808F8();
  sub_10000C384(v22, v28);
  v40 = &v28[*(v86 + 36)];
  v41 = v94[5];
  *(v40 + 4) = v94[4];
  *(v40 + 5) = v41;
  *(v40 + 6) = v94[6];
  v42 = v94[1];
  *v40 = v94[0];
  *(v40 + 1) = v42;
  v43 = v94[3];
  *(v40 + 2) = v94[2];
  *(v40 + 3) = v43;
  sub_1000105E8(v28, v88);
  v44 = sub_100025138(a2, v87);
  __chkstk_darwin(v44);
  v77 = a1;
  sub_100002840(&qword_1000AD170, &qword_1000864C8);
  sub_100010660();
  sub_100080CE8();
  v101[0] = v95;
  v91 = v95;
  sub_1000055FC(v101, v90, &qword_1000ACE48, &unk_100086040);
  v45 = 0;
  v92 = sub_100056928(0);
  v93 = v46;
  v47 = _swiftEmptyArrayStorage;
LABEL_7:
  v48 = &v91 + 2 * v45 + 1;
  while (++v45 != 3)
  {
    v49 = v48 + 2;
    v50 = *v48;
    v48 += 2;
    if (v50)
    {
      v51 = *(v49 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_10003EE4C(0, *(v47 + 2) + 1, 1, v47);
      }

      v53 = *(v47 + 2);
      v52 = *(v47 + 3);
      if (v53 >= v52 >> 1)
      {
        v47 = sub_10003EE4C((v52 > 1), v53 + 1, 1, v47);
      }

      *(v47 + 2) = v53 + 1;
      v54 = &v47[16 * v53];
      *(v54 + 4) = v51;
      *(v54 + 5) = v50;
      goto LABEL_7;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v56 = 0;
  v57 = *(v47 + 2);
  v58 = _swiftEmptyArrayStorage;
LABEL_16:
  v59 = &v47[16 * v56 + 40];
  while (1)
  {
    if (v57 == v56)
    {

      v90[0] = v58;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
      v66 = sub_100081128();
      v68 = v67;

      v90[0] = v66;
      v90[1] = v68;
      sub_100005C98(&qword_1000AD180, &qword_1000AD158, &qword_100086478);
      sub_1000057D0();
      v69 = v81;
      v70 = v82;
      v71 = v89;
      sub_100080DD8();

      (*(v80 + 8))(v71, v69);
      v72 = v88;
      v73 = v79;
      sub_1000055FC(v88, v79, &qword_1000AD168, &qword_100088190);
      v74 = v83;
      sub_1000055FC(v70, v83, &qword_1000AD160, &unk_100086480);
      v75 = v84;
      sub_1000055FC(v73, v84, &qword_1000AD168, &qword_100088190);
      v76 = sub_100002840(&qword_1000AD188, &qword_1000864D0);
      sub_1000055FC(v74, v75 + *(v76 + 48), &qword_1000AD160, &unk_100086480);
      sub_100005B2C(v70, &qword_1000AD160, &unk_100086480);
      sub_100005B2C(v72, &qword_1000AD168, &qword_100088190);
      sub_100005B2C(v74, &qword_1000AD160, &unk_100086480);
      return sub_100005B2C(v73, &qword_1000AD168, &qword_100088190);
    }

    if (v56 >= *(v47 + 2))
    {
      break;
    }

    ++v56;
    v61 = *(v59 - 1);
    v60 = *v59;
    v59 += 16;
    v62 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v58;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v58[2] + 1, 1);
        v58 = v90[0];
      }

      v64 = v58[2];
      v63 = v58[3];
      if (v64 >= v63 >> 1)
      {
        result = sub_100061B34((v63 > 1), v64 + 1, 1);
        v58 = v90[0];
      }

      v58[2] = v64 + 1;
      v65 = &v58[2 * v64];
      v65[4] = v61;
      v65[5] = v60;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

double sub_100010190@<D0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_100056928(1);
  v6 = v5;
  v7 = a1[6];
  v21[0] = a1[5];
  v21[1] = v7;
  v8 = a1[8];
  v22 = a1[7];
  v23 = v8;
  v9 = v22;
  sub_10001071C(v21, v19);
  v10 = sub_100080B08();
  v11 = *&v21[0];
  v12 = v10;
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for LabelView();
  v14 = (a2 + v13[5]);
  *v14 = v4;
  v14[1] = v6;
  *(a2 + v13[6]) = v9;
  v15 = a2 + v13[7];
  *v15 = v12;
  *(v15 + 1) = v11;
  *(v15 + 8) = 0;
  sub_100080A68();
  sub_100080A18();
  sub_1000807E8();
  v16 = (a2 + *(sub_100002840(&qword_1000AD170, &qword_1000864C8) + 36));
  v17 = v19[1];
  *v16 = v19[0];
  v16[1] = v17;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t sub_1000102C8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v12 = v1[6];
  v13 = v3;
  v14 = v1[8];
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v7 = sub_100080A78();
  v8 = v12;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  v9 = sub_100002840(&qword_1000AD100, &qword_1000863F8);
  return sub_10000F030(v11, (a1 + *(v9 + 44)));
}

uint64_t sub_10001034C()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[11];

  v4 = v0[16];

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_1000103DC()
{
  result = qword_1000AD128;
  if (!qword_1000AD128)
  {
    sub_100004FC8(&qword_1000AD120, &qword_100086448);
    sub_100004FC8(&qword_1000AD130, &qword_100086450);
    sub_100005C98(&qword_1000AD138, &qword_1000AD130, &qword_100086450);
    swift_getOpaqueTypeConformance2();
    sub_10000C3F0(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD128);
  }

  return result;
}

uint64_t sub_100010508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD110, &qword_100086408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010578(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD110, &qword_100086408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000105E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD168, &qword_100088190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010660()
{
  result = qword_1000AD178;
  if (!qword_1000AD178)
  {
    sub_100004FC8(&qword_1000AD170, &qword_1000864C8);
    sub_10000C3F0(&qword_1000ACE40, type metadata accessor for LabelView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD178);
  }

  return result;
}

uint64_t sub_100010754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001079C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags.BooksWidget(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeatureFlags.BooksWidget(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100010938()
{
  v0 = sub_100002840(&qword_1000ACBB8, &qword_100085CB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_10000936C();
  sub_100081358();
  sub_100081358();
  sub_100010EE4(&qword_1000AD1B0);
  v8 = sub_100081148();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

Swift::Int sub_100010AA0()
{
  sub_1000816B8();
  sub_1000816C8(0);
  return sub_1000816F8();
}

Swift::Int sub_100010B0C()
{
  sub_1000816B8();
  sub_1000816C8(0);
  return sub_1000816F8();
}

BOOL sub_100010B4C@<W0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100010D3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100010B78()
{
  sub_100010CE8();

  return sub_100080578();
}

uint64_t sub_100010BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = sub_10000936C();
  v5 = sub_100010EE4(&qword_1000ACBB0);

  return a3(a1, v4, v5);
}

unint64_t sub_100010C80()
{
  result = qword_1000AD1A0;
  if (!qword_1000AD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1A0);
  }

  return result;
}

unint64_t sub_100010CE8()
{
  result = qword_1000AD1A8;
  if (!qword_1000AD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1A8);
  }

  return result;
}

BOOL sub_100010D3C(char *a1)
{
  v2 = sub_100002840(&qword_1000ACBB8, &qword_100085CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v3 + 16))(&v13 - v8, a1, v2);
  sub_100010CE8();
  sub_100080578();
  sub_100010EE4(&qword_1000AD1B0);
  v10 = sub_100081148();
  v11 = *(v3 + 8);
  v11(a1, v2);
  v11(v7, v2);
  v11(v9, v2);
  return (v10 & 1) == 0;
}

uint64_t sub_100010EE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(&qword_1000ACBB8, &qword_100085CB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WidgetBookInfo.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WidgetBookInfo.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetBookInfo.progress.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t WidgetBookInfo.progress.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WidgetBookInfo.assetID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WidgetBookInfo.assetID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *WidgetBookInfo.cloudAssetType.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t WidgetBookInfo.coverURL.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t WidgetBookInfo.coverURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

__n128 sub_100011200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100011224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001126C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000112D4()
{
  v1 = *(v0 + 56);
  v2 = sub_100081218();
  v4 = v3;
  if (v2 == sub_100081218() && v4 == v5)
  {
    v8 = 1;
    goto LABEL_17;
  }

  v7 = sub_100081618();

  if ((v7 & 1) == 0)
  {
    if (!*(v0 + 48))
    {
      v8 = 0;
      return v8 & 1;
    }

    v9 = BDSCloudAssetTypeStoreAudiobook;
    v10 = sub_100081218();
    v12 = v11;
    if (v10 == sub_100081218() && v12 == v13)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_100081618();
    }

LABEL_17:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_1000113EC()
{
  v1 = *(v0 + 56);
  v2 = sub_100081218();
  v4 = v3;
  if (v2 == sub_100081218() && v4 == v5)
  {

    if (*(v0 + 48))
    {
      goto LABEL_7;
    }

LABEL_13:
    v14 = 0;
    return v14 & 1;
  }

  v7 = sub_100081618();

  if ((v7 & 1) == 0 || !*(v0 + 48))
  {
    goto LABEL_13;
  }

LABEL_7:
  v8 = BDSCloudAssetTypeStoreAudiobook;
  v9 = sub_100081218();
  v11 = v10;
  if (v9 == sub_100081218() && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_100081618();
  }

  return v14 & 1;
}

uint64_t sub_10001150C()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AD1B8);
  sub_10000A480(v0, qword_1000AD1B8);
  sub_100019DAC();
  sub_1000814E8();
  return sub_100080708();
}

uint64_t sub_1000115A4()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B7E80);
  v26[1] = sub_10000A480(v23, qword_1000B7E80);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_1000119B8()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v65 = &v42 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v42 - v5;
  v64 = sub_1000801E8();
  v69 = *(v64 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin(v64);
  v58 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_100080478();
  v68 = *(v60 - 8);
  v8 = *(v68 + 64);
  v9 = __chkstk_darwin(v60);
  v59 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = sub_1000811C8();
  v66 = *(v13 - 8);
  v14 = v66;
  v15 = *(v66 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v63 = sub_1000801F8();
  v67 = *(v63 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v63);
  v56 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AD488, &unk_100087410);
  v23 = sub_100002840(&qword_1000AD490, &qword_10008B2F0);
  v61 = v23;
  v24 = *(v23 - 8);
  v54 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v55 = v26;
  *(v26 + 16) = xmmword_100085A40;
  v57 = v26 + v25;
  v51 = *(v23 + 48);
  *(v26 + v25) = 0;
  sub_100081158();
  sub_100080448();
  v53 = *(v14 + 16);
  v42 = v18;
  v27 = v13;
  v53(v18, v20, v13);
  v28 = v68;
  v52 = *(v68 + 16);
  v29 = v60;
  v52(v59, v12, v60);
  v50 = type metadata accessor for BundleFinder();
  v30 = v58;
  *v58 = v50;
  v48 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v31 = *(v69 + 104);
  v69 += 104;
  v49 = v31;
  v31(v30);
  sub_100080208();
  v32 = *(v28 + 8);
  v68 = v28 + 8;
  v47 = v32;
  v32(v12, v29);
  v33 = *(v66 + 8);
  v66 += 8;
  v46 = v33;
  v33(v20, v27);
  v34 = *(v67 + 56);
  v67 += 56;
  v45 = v34;
  v34(v62, 1, 1, v63);
  v35 = sub_10007FF18();
  v36 = *(v35 - 8);
  v43 = *(v36 + 56);
  v44 = v36 + 56;
  v43(v65, 1, 1, v35);
  v37 = v57;
  sub_10007FF48();
  v51 = (v37 + v54);
  v54 = *(v61 + 48);
  *v51 = 1;
  sub_100081158();
  sub_100080448();
  v53(v42, v20, v27);
  v38 = v60;
  v52(v59, v12, v60);
  v39 = v58;
  *v58 = v50;
  v49(v39, v48, v64);
  sub_100080208();
  v47(v12, v38);
  v46(v20, v27);
  v45(v62, 1, 1, v63);
  v43(v65, 1, 1, v35);
  sub_10007FF48();
  v40 = sub_1000677AC(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7E98 = v40;
  return result;
}

uint64_t sub_10001217C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6369666963657073;
  }

  else
  {
    v4 = 0x6563655274736F6DLL;
  }

  if (v3)
  {
    v5 = 0xEA0000000000746ELL;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6369666963657073;
  }

  else
  {
    v6 = 0x6563655274736F6DLL;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA0000000000746ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100081618();
  }

  return v9 & 1;
}

unint64_t sub_10001222C()
{
  result = qword_1000AD1D0;
  if (!qword_1000AD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1D0);
  }

  return result;
}

Swift::Int sub_100012280()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100012308()
{
  *v0;
  sub_100081298();
}

Swift::Int sub_10001237C()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

void sub_10001240C(uint64_t *a1@<X8>)
{
  v2 = 0x6563655274736F6DLL;
  if (*v1)
  {
    v2 = 0x6369666963657073;
  }

  v3 = 0xEA0000000000746ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100012454()
{
  result = qword_1000AD1D8;
  if (!qword_1000AD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1D8);
  }

  return result;
}

unint64_t sub_1000124AC()
{
  result = qword_1000AD1E0;
  if (!qword_1000AD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1E0);
  }

  return result;
}

unint64_t sub_100012504()
{
  result = qword_1000AD1E8;
  if (!qword_1000AD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1E8);
  }

  return result;
}

unint64_t sub_100012568()
{
  result = qword_1000AD1F0;
  if (!qword_1000AD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1F0);
  }

  return result;
}

unint64_t sub_1000125C0()
{
  result = qword_1000AD1F8;
  if (!qword_1000AD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD1F8);
  }

  return result;
}

unint64_t sub_100012614()
{
  result = qword_1000AD200;
  if (!qword_1000AD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD200);
  }

  return result;
}

unint64_t sub_10001266C()
{
  result = qword_1000AD208;
  if (!qword_1000AD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD208);
  }

  return result;
}

unint64_t sub_100012710()
{
  result = qword_1000AD210;
  if (!qword_1000AD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD210);
  }

  return result;
}

uint64_t sub_100012768(uint64_t a1)
{
  v2 = sub_100012710();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000127B8()
{
  result = qword_1000AD218;
  if (!qword_1000AD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD218);
  }

  return result;
}

unint64_t sub_100012810()
{
  result = qword_1000AD220;
  if (!qword_1000AD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD220);
  }

  return result;
}

unint64_t sub_100012868()
{
  result = qword_1000AD228;
  if (!qword_1000AD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD228);
  }

  return result;
}

uint64_t sub_1000128E0(uint64_t a1)
{
  v2 = sub_10001266C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100012984()
{
  result = qword_1000AD240;
  if (!qword_1000AD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD240);
  }

  return result;
}

unint64_t sub_1000129DC()
{
  result = qword_1000AD248;
  if (!qword_1000AD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD248);
  }

  return result;
}

uint64_t sub_100012A68()
{
  v0 = sub_1000801E8();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  __chkstk_darwin(v0);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000801F8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100080478();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = sub_1000811C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v25 - v20;
  v26 = v4;
  sub_10000A794(v4, qword_1000B7EA0);
  v25 = sub_10000A480(v4, qword_1000B7EA0);
  sub_100081158();
  sub_100080448();
  (*(v15 + 16))(v19, v21, v14);
  v22 = v27;
  (*(v7 + 16))(v11, v13, v27);
  *v3 = type metadata accessor for BundleFinder();
  (*(v29 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v30);
  v23 = v28;
  sub_100080208();
  (*(v7 + 8))(v13, v22);
  (*(v15 + 8))(v21, v14);
  return (*(v31 + 32))(v25, v23, v26);
}

uint64_t sub_100012E54@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100002840(&qword_1000AD438, &qword_1000873B0);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = v27 - v6;
  v7 = sub_100002840(&qword_1000AD440, &qword_1000873B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v27 - v13;
  __chkstk_darwin(v12);
  v31 = v27 - v15;
  v40 = 0;
  v37 = sub_100002840(&qword_1000AD448, &qword_1000873C0);
  v27[3] = sub_100019E98();
  v16 = sub_100012614();
  v27[2] = sub_100005C98(&qword_1000AD450, &qword_1000AD448, &qword_1000873C0);
  sub_100080158();
  v27[1] = sub_100005C98(&qword_1000AD458, &qword_1000AD440, &qword_1000873B8);
  sub_100080128();
  v38 = *(v8 + 8);
  v28 = v14;
  v38(v14, v7);
  v29 = v8 + 8;
  v39 = 1;
  v17 = v30;
  v27[0] = v16;
  sub_100080158();
  sub_100080128();
  v38(v17, v7);
  v18 = v32;
  sub_1000801A8();
  sub_100005C98(&qword_1000AD460, &qword_1000AD438, &qword_1000873B0);
  v19 = v33;
  v20 = v18;
  v21 = v34;
  sub_100080128();
  v22 = *(v35 + 8);
  v22(v20, v21);
  v23 = v31;
  v24 = v28;
  sub_100080118();
  v22(v19, v21);
  v25 = v38;
  v38(v24, v7);
  return v25(v23, v7);
}

uint64_t sub_100013320@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100002840(&qword_1000AD468, &qword_1000873C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100002840(&qword_1000AD470, &qword_1000873D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100002840(&qword_1000AD448, &qword_1000873C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_100019E98();
  sub_10007FFE8();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_10007FFD8(v16);
  swift_getKeyPath();
  sub_100002840(&qword_1000AD478, &qword_1000873D8);
  sub_10007FFC8();

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  sub_10007FFD8(v17);
  swift_getKeyPath();
  sub_100002840(&qword_1000AD480, &qword_100087408);
  sub_10007FFC8();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10007FFD8(v18);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AD450, &qword_1000AD448, &qword_1000873C0);
  sub_100080098();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_100080088();
  return (v13)(v12, v5);
}

uint64_t sub_100013658@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100002840(&qword_1000AD468, &qword_1000873C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100002840(&qword_1000AD470, &qword_1000873D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100002840(&qword_1000AD448, &qword_1000873C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_100019E98();
  sub_10007FFE8();
  v16._countAndFlagsBits = 0x206E65704FLL;
  v16._object = 0xE500000000000000;
  sub_10007FFD8(v16);
  swift_getKeyPath();
  sub_100002840(&qword_1000AD478, &qword_1000873D8);
  sub_10007FFC8();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10007FFD8(v17);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AD450, &qword_1000AD448, &qword_1000873C0);
  sub_100080098();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_100080088();
  return (v13)(v12, v5);
}

uint64_t sub_10001398C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100002840(&qword_1000AD428, &qword_1000873A8);
  v5 = sub_100005C98(&qword_1000AD430, &qword_1000AD428, &qword_1000873A8);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_100012E54, 0, v4, a2, v5);
}

uint64_t sub_100013A58(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000813C8();
  *(v1 + 24) = sub_1000813B8();
  v3 = sub_1000813A8();

  return _swift_task_switch(sub_100013AF0, v3, v2);
}

uint64_t sub_100013AF0()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_10007FC28();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100013B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018218();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100013B88(uint64_t a1)
{
  v2 = sub_100019E98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100013BC4()
{
  result = qword_1000AD250;
  if (!qword_1000AD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD250);
  }

  return result;
}

uint64_t sub_100013C18()
{
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  sub_10007FAE8();
  result = sub_10007FAB8();
  qword_1000B7EB8 = result;
  return result;
}

uint64_t sub_100013C88()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B7EC0);
  v26[1] = sub_10000A480(v23, qword_1000B7EC0);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_100014090@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v3 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v28[0] = v28 - v5;
  v6 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  v13 = sub_1000801F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v28 - v19;
  v21 = v1[3];
  sub_10007FC58();
  if (!v29)
  {
    v23 = *v2;
    v22 = v2[1];
  }

  sub_1000801D8();
  v24 = *(v14 + 56);
  v24(v12, 1, 1, v13);
  v25 = v2[5];
  sub_10007FC58();
  if (v29)
  {
    sub_1000801D8();
    sub_100005B2C(v12, &qword_1000AD3C8, &qword_100087330);
    v24(v10, 0, 1, v13);
    sub_10000C1E0(v10, v12, &qword_1000AD3C8, &qword_100087330);
  }

  (*(v14 + 16))(v18, v20, v13);
  sub_1000055FC(v12, v10, &qword_1000AD3C8, &qword_100087330);
  v26 = sub_10007FF18();
  (*(*(v26 - 8) + 56))(v28[0], 1, 1, v26);
  sub_10007FF48();
  sub_100005B2C(v12, &qword_1000AD3C8, &qword_100087330);
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_1000143C4()
{
  v0 = sub_100002840(&qword_1000AD3F8, &qword_100087358);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  v5 = sub_100002840(&qword_1000AD400, &unk_100087360);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_100002840(&qword_1000AD3F0, &qword_100087350);
  sub_10000A794(v7, qword_1000B7ED8);
  sub_10000A480(v7, qword_1000B7ED8);
  sub_100013BC4();
  sub_100080058();
  v10._object = 0x80000001000823C0;
  v10._countAndFlagsBits = 0xD000000000000011;
  sub_100080048(v10);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100080038();
  (*(v1 + 8))(v4, v0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_100080048(v11);
  return sub_100080068();
}

unint64_t sub_1000145D0()
{
  result = qword_1000AD258;
  if (!qword_1000AD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD258);
  }

  return result;
}

uint64_t sub_100014624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC630 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AD3F0, &qword_100087350);
  v3 = sub_10000A480(v2, qword_1000B7ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000146DC()
{
  result = qword_1000AD260;
  if (!qword_1000AD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD260);
  }

  return result;
}

unint64_t sub_100014734()
{
  result = qword_1000AD268;
  if (!qword_1000AD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD268);
  }

  return result;
}

unint64_t sub_10001478C()
{
  result = qword_1000AD270;
  if (!qword_1000AD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD270);
  }

  return result;
}

unint64_t sub_1000147E4()
{
  result = qword_1000AD278;
  if (!qword_1000AD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD278);
  }

  return result;
}

uint64_t sub_100014844@<X0>(void *a1@<X8>)
{
  if (qword_1000AC620 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000B7EB8;
}

uint64_t sub_1000148B4()
{
  sub_100019E44();
  v1 = sub_100080008();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100014924()
{
  result = qword_1000AD280;
  if (!qword_1000AD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD280);
  }

  return result;
}

unint64_t sub_10001497C()
{
  result = qword_1000AD288;
  if (!qword_1000AD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD288);
  }

  return result;
}

unint64_t sub_1000149D4()
{
  result = qword_1000AD290;
  if (!qword_1000AD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD290);
  }

  return result;
}

unint64_t sub_100014A2C()
{
  result = qword_1000AD298;
  if (!qword_1000AD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD298);
  }

  return result;
}

uint64_t sub_100014A8C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100014B18(uint64_t a1)
{
  v2 = sub_100013BC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100014B68()
{
  result = qword_1000AD2B0;
  if (!qword_1000AD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2B0);
  }

  return result;
}

uint64_t sub_100014BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000074F4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100014C84(uint64_t a1)
{
  v2 = sub_100014A2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100014CD0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100019F7C, 0, 0);
}

unint64_t sub_100014CF8()
{
  result = qword_1000AD2B8;
  if (!qword_1000AD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2B8);
  }

  return result;
}

unint64_t sub_100014D50()
{
  result = qword_1000AD2C0;
  if (!qword_1000AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2C0);
  }

  return result;
}

uint64_t sub_100014DA4@<X0>(uint64_t *a1@<X8>)
{
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  sub_10007FAE8();
  result = sub_10007FAB8();
  *a1 = result;
  return result;
}

uint64_t sub_100014E40()
{
  v1 = *(v0 + 16);
  sub_10007FAA8();
  v2 = *(v0 + 8);

  return v2(_swiftEmptyArrayStorage);
}

uint64_t sub_100014EAC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100014ED0, 0, 0);
}

uint64_t sub_100014ED0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10007FAA8();
  *v1 = _swiftEmptyArrayStorage;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100014F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100015000;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100015000(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100015104()
{
  result = qword_1000AD2C8;
  if (!qword_1000AD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2C8);
  }

  return result;
}

unint64_t sub_10001515C()
{
  result = qword_1000AD2D0;
  if (!qword_1000AD2D0)
  {
    sub_100004FC8(&qword_1000AD2D8, qword_100086DD0);
    sub_1000149D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2D0);
  }

  return result;
}

uint64_t sub_1000151E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000147E4();
  *v6 = v2;
  v6[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100015294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000AB6C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10001534C()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B7EF0);
  v26[1] = sub_10000A480(v23, qword_1000B7EF0);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_100015764()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v65 = &v42 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v42 - v5;
  v64 = sub_1000801E8();
  v69 = *(v64 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin(v64);
  v58 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_100080478();
  v68 = *(v60 - 8);
  v8 = *(v68 + 64);
  v9 = __chkstk_darwin(v60);
  v59 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = sub_1000811C8();
  v66 = *(v13 - 8);
  v14 = v66;
  v15 = *(v66 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v63 = sub_1000801F8();
  v67 = *(v63 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v63);
  v56 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AD3D0, &qword_100087338);
  v23 = sub_100002840(&qword_1000AD3D8, &qword_100087340);
  v61 = v23;
  v24 = *(v23 - 8);
  v54 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v55 = v26;
  *(v26 + 16) = xmmword_100085A40;
  v57 = v26 + v25;
  v51 = *(v23 + 48);
  *(v26 + v25) = 0;
  sub_100081158();
  sub_100080448();
  v53 = *(v14 + 16);
  v42 = v18;
  v27 = v13;
  v53(v18, v20, v13);
  v28 = v68;
  v52 = *(v68 + 16);
  v29 = v60;
  v52(v59, v12, v60);
  v50 = type metadata accessor for BundleFinder();
  v30 = v58;
  *v58 = v50;
  v48 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v31 = *(v69 + 104);
  v69 += 104;
  v49 = v31;
  v31(v30);
  sub_100080208();
  v32 = *(v28 + 8);
  v68 = v28 + 8;
  v47 = v32;
  v32(v12, v29);
  v33 = *(v66 + 8);
  v66 += 8;
  v46 = v33;
  v33(v20, v27);
  v34 = *(v67 + 56);
  v67 += 56;
  v45 = v34;
  v34(v62, 1, 1, v63);
  v35 = sub_10007FF18();
  v36 = *(v35 - 8);
  v43 = *(v36 + 56);
  v44 = v36 + 56;
  v43(v65, 1, 1, v35);
  v37 = v57;
  sub_10007FF48();
  v51 = (v37 + v54);
  v54 = *(v61 + 48);
  *v51 = 1;
  sub_100081158();
  sub_100080448();
  v53(v42, v20, v27);
  v38 = v60;
  v52(v59, v12, v60);
  v39 = v58;
  *v58 = v50;
  v49(v39, v48, v64);
  sub_100080208();
  v47(v12, v38);
  v46(v20, v27);
  v45(v62, 1, 1, v63);
  v43(v65, 1, 1, v35);
  sub_10007FF48();
  v40 = sub_100067994(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7F08 = v40;
  return result;
}

uint64_t sub_100015F04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6710384;
  }

  else
  {
    v4 = 1802465122;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6710384;
  }

  else
  {
    v6 = 1802465122;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100081618();
  }

  return v9 & 1;
}

unint64_t sub_100015FA0()
{
  result = qword_1000AD2E0;
  if (!qword_1000AD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2E0);
  }

  return result;
}

Swift::Int sub_100015FF4()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100016068()
{
  *v0;
  sub_100081298();
}

Swift::Int sub_1000160C8()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100016144@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000815F8(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_1000161A0(uint64_t *a1@<X8>)
{
  v2 = 1802465122;
  if (*v1)
  {
    v2 = 6710384;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000161D4()
{
  result = qword_1000AD2E8;
  if (!qword_1000AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2E8);
  }

  return result;
}

unint64_t sub_10001622C()
{
  result = qword_1000AD2F0;
  if (!qword_1000AD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2F0);
  }

  return result;
}

unint64_t sub_100016284()
{
  result = qword_1000AD2F8;
  if (!qword_1000AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD2F8);
  }

  return result;
}

unint64_t sub_1000162DC()
{
  result = qword_1000AD300;
  if (!qword_1000AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD300);
  }

  return result;
}

unint64_t sub_100016334()
{
  result = qword_1000AD308;
  if (!qword_1000AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD308);
  }

  return result;
}

unint64_t sub_10001638C()
{
  result = qword_1000AD310;
  if (!qword_1000AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD310);
  }

  return result;
}

unint64_t sub_1000163E4()
{
  result = qword_1000AD318;
  if (!qword_1000AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD318);
  }

  return result;
}

uint64_t sub_100016470@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10000A480(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100016584()
{
  result = qword_1000AD320;
  if (!qword_1000AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD320);
  }

  return result;
}

uint64_t sub_1000165D8(uint64_t a1)
{
  v2 = sub_100016584();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100016628()
{
  result = qword_1000AD328;
  if (!qword_1000AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD328);
  }

  return result;
}

unint64_t sub_100016680()
{
  result = qword_1000AD330;
  if (!qword_1000AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD330);
  }

  return result;
}

unint64_t sub_1000166D8()
{
  result = qword_1000AD338;
  if (!qword_1000AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD338);
  }

  return result;
}

uint64_t sub_100016750(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_1000167B4(uint64_t a1)
{
  v2 = sub_1000163E4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100016858()
{
  result = qword_1000AD350;
  if (!qword_1000AD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD350);
  }

  return result;
}

void sub_1000168AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_100081298();
  v4 = v0[3];
  sub_10007FC58();
  if (v6)
  {
    sub_1000816D8(1u);
    sub_100081298();
  }

  else
  {
    sub_1000816D8(0);
  }

  v5 = v1[5];
  sub_10007FC58();
  if (v6)
  {
    sub_1000816D8(1u);
    sub_100081298();
  }

  else
  {
    sub_1000816D8(0);
  }
}

Swift::Int sub_100016988()
{
  sub_1000816B8();
  sub_1000168AC();
  return sub_1000816F8();
}

Swift::Int sub_1000169CC()
{
  sub_1000816B8();
  sub_1000168AC();
  return sub_1000816F8();
}

uint64_t sub_100016A08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10001808C(v9, v10) & 1;
}

uint64_t sub_100016A80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v15 = sub_100080308();
  v16 = *(*(v15 - 8) + 56);
  if (v14)
  {
    v17 = *(v15 - 8);
    v16(v12, 1, 1, v15);
    sub_1000055FC(v12, v10, &qword_1000AD3B0, &unk_100087320);
    if ((*(v17 + 48))(v10, 1, v15) == 1)
    {
      sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
      sub_100044010(v13, v14, 0, v7);
      sub_100005B2C(v12, &qword_1000AD3B0, &unk_100087320);
      sub_10000C1E0(v7, v12, &qword_1000AD3B0, &unk_100087320);
    }

    else
    {
      sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
    }

    return sub_10000C1E0(v12, a1, &qword_1000AD3B0, &unk_100087320);
  }

  else
  {

    return (v16)(a1, 1, 1, v15);
  }
}

uint64_t sub_100016CC0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = sub_100002840(&qword_1000AD388, &qword_1000872F8);
  v1 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v3 = &v20 - v2;
  v4 = sub_100080608();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002840(&qword_1000AD390, &qword_100087300);
  v22 = *(v6 - 8);
  v7 = v22;
  v8 = *(v22 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v24 = sub_100002840(&qword_1000AD398, &qword_100087308);
  v21 = *(v24 - 8);
  v11 = v21;
  v12 = *(v21 + 64);
  __chkstk_darwin(v24);
  v14 = &v20 - v13;
  sub_1000805E8();
  sub_100017F78();
  sub_100080588();
  sub_100005C98(&qword_1000AD3A8, &qword_1000AD390, &qword_100087300);
  sub_100080598();
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1000805F8();
  sub_100080588();
  v16 = *(v23 + 48);
  v17 = *(v11 + 16);
  v18 = v24;
  v17(v3, v14, v24);
  (*(v22 + 16))(&v3[v16], v10, v6);
  sub_1000805A8();
  v15(v10, v6);
  return (*(v21 + 8))(v14, v18);
}

uint64_t sub_100017030(_OWORD *a1)
{
  v3 = *(*(sub_100002840(&qword_1000AD3B0, &unk_100087320) - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v4 = sub_100080308();
  *(v1 + 120) = v4;
  v5 = *(v4 - 8);
  *(v1 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v7 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v7;
  v8 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v8;
  v9 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v9;

  return _swift_task_switch(sub_10001714C, 0, 0);
}

uint64_t sub_10001714C()
{
  v38 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100016A80(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005B2C(v0[14], &qword_1000AD3B0, &unk_100087320);
    if (qword_1000AC600 != -1)
    {
      swift_once();
    }

    v4 = sub_1000806F8();
    sub_10000A480(v4, qword_1000AD1B8);
    v5 = sub_1000806D8();
    v6 = sub_100081438();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v37);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s -- .url: nil", v7, 0xCu);
      sub_100019DF8(v8);
    }

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
    if (qword_1000AC600 != -1)
    {
      swift_once();
    }

    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    v15 = sub_1000806F8();
    sub_10000A480(v15, qword_1000AD1B8);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_1000806D8();
    v17 = sub_100081438();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[15];
    if (v18)
    {
      v36 = v0[15];
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v37);
      *(v22 + 12) = 2080;
      v23 = sub_100080278();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v36);
      v27 = sub_10006150C(v23, v25, &v37);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s -- .url: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v28 = v0[18];
    v29 = v0[15];
    v9 = sub_100080298();
    v10 = v30;
    v26(v28, v29);
  }

  v32 = v0[17];
  v31 = v0[18];
  v33 = v0[14];

  v34 = v0[1];

  return v34(v9, v10);
}

BOOL sub_100017560(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = sub_100080308();
  v18 = *(*(v17 - 8) + 56);
  if (v16)
  {
    v19 = *(v17 - 8);
    v18(v12, 1, 1, v17);
    sub_1000055FC(v12, v9, &qword_1000AD3B0, &unk_100087320);
    v20 = *(v19 + 48);
    if (v20(v9, 1, v17) == 1)
    {
      sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
      sub_100044010(v15, v16, 0, v6);
      sub_100005B2C(v12, &qword_1000AD3B0, &unk_100087320);
      sub_10000C1E0(v6, v12, &qword_1000AD3B0, &unk_100087320);
    }

    else
    {
      sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
    }

    sub_10000C1E0(v12, v14, &qword_1000AD3B0, &unk_100087320);
    v21 = v20(v14, 1, v17) != 1;
  }

  else
  {
    v18(v14, 1, 1, v17);
    v21 = 0;
  }

  sub_100005B2C(v14, &qword_1000AD3B0, &unk_100087320);
  return v21;
}

uint64_t sub_1000177DC(_OWORD *a1)
{
  v3 = sub_100081248();
  *(v1 + 144) = v3;
  v4 = *(v3 - 8);
  *(v1 + 152) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v6 = *(*(sub_100002840(&qword_1000AD3B0, &unk_100087320) - 8) + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  v7 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v7;
  v8 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v8;
  v9 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v9;

  return _swift_task_switch(sub_1000178EC, 0, 0);
}

uint64_t sub_1000178EC()
{
  v27 = v0;
  v1 = v0[21];
  v2 = v0[5];
  sub_10007FC58();
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[7];
  sub_10007FC58();
  v6 = v0[16];
  v7 = v0[17];
  sub_100016A80(v1);
  v8 = sub_100044E44(v3, v4, v6, v7, v1);
  v10 = v9;

  sub_100005B2C(v1, &qword_1000AD3B0, &unk_100087320);
  if (qword_1000AC600 != -1)
  {
    swift_once();
  }

  v11 = sub_1000806F8();
  sub_10000A480(v11, qword_1000AD1B8);

  v12 = sub_1000806D8();
  v13 = sub_100081438();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10006150C(v8, v10, &v26);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s -- .text: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[18];
  v18 = v0[19];
  sub_100081238();
  v19 = sub_100081228();
  v21 = v20;

  (*(v18 + 8))(v16, v17);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  if (v21 >> 60 == 15)
  {
    v23 = 0xC000000000000000;
  }

  else
  {
    v23 = v21;
  }

  v24 = v0[1];

  return v24(v22, v23);
}

__n128 sub_100017BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100017BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100017C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100017C94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017CA8(uint64_t *a1, int a2)
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

uint64_t sub_100017CF0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PlaybackMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017F78()
{
  result = qword_1000AD3A0;
  if (!qword_1000AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD3A0);
  }

  return result;
}

uint64_t sub_100017FEC()
{
  v1 = *(v0 + 16);
  v2 = sub_100080308();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001808C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_100081618() & 1) != 0)
  {
    v5 = a1[3];
    sub_10007FC58();
    v6 = a2[3];
    sub_10007FC58();
    if (v11)
    {
    }

    v7 = a1[5];
    sub_10007FC58();
    v8 = a2[5];
    sub_10007FC58();
    if (v11)
    {

      v9 = 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100018218()
{
  v87 = sub_100080078();
  v96 = *(v87 - 8);
  v0 = *(v96 + 64);
  __chkstk_darwin(v87);
  v85 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v84 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v69 - v6;
  v7 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v95 = &v69 - v9;
  v99 = sub_1000801E8();
  v104 = *(v99 - 8);
  v10 = *(v104 + 64);
  __chkstk_darwin(v99);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_100080478();
  v105 = *(v97 - 8);
  v13 = v105;
  v14 = *(v105 + 64);
  v15 = __chkstk_darwin(v97);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v20 = sub_1000811C8();
  v88 = v20;
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v69 - v26;
  v86 = sub_1000801F8();
  v92 = *(v86 - 8);
  v28 = *(v92 + 64);
  v29 = __chkstk_darwin(v86);
  v78 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v82 = &v69 - v31;
  v77 = sub_100002840(&qword_1000AD418, &qword_100087370);
  sub_100081158();
  sub_100080448();
  v32 = v21[2];
  v91 = v21 + 2;
  v100 = v32;
  v32(v25, v27, v20);
  v33 = *(v13 + 16);
  v94 = v13 + 16;
  v103 = v33;
  v80 = v17;
  v34 = v97;
  v33(v17, v19, v97);
  v101 = type metadata accessor for BundleFinder();
  *v12 = v101;
  v93 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v35 = *(v104 + 104);
  v104 += 104;
  v102 = v35;
  v36 = v99;
  v35(v12);
  v37 = v12;
  sub_100080208();
  v98 = *(v105 + 8);
  v105 += 8;
  v98(v19, v34);
  v90 = v21[1];
  v38 = v88;
  v90(v27, v88);
  v89 = v21 + 1;
  v39 = v27;
  sub_100081158();
  sub_100080448();
  v79 = v25;
  v100(v25, v27, v38);
  v40 = v97;
  v103(v80, v19, v97);
  *v37 = v101;
  v81 = v37;
  v102(v37, v93, v36);
  v41 = v95;
  sub_100080208();
  v42 = v19;
  v98(v19, v40);
  v43 = v38;
  v90(v39, v38);
  v44 = *(v92 + 56);
  v92 += 56;
  v70 = v44;
  v44(v41, 0, 1, v86);
  LOBYTE(v106) = 0;
  v45 = sub_10007FBF8();
  v72 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v73 = v47;
  v74 = v46 + 56;
  v47(v83, 1, 1, v45);
  v47(v84, 1, 1, v45);
  v75 = enum case for InputConnectionBehavior.default(_:);
  v48 = *(v96 + 104);
  v96 += 104;
  v76 = v48;
  v48(v85);
  sub_100012710();
  v77 = sub_10007FD18();
  v71 = sub_100002840(&qword_1000AD420, &qword_100087378);
  v49 = v39;
  sub_100081158();
  sub_100080448();
  v100(v79, v39, v43);
  v50 = v80;
  v51 = v97;
  v103(v80, v42, v97);
  v52 = v81;
  v53 = v102;
  *v81 = v101;
  v54 = v93;
  v53(v52, v93, v99);
  sub_100080208();
  v55 = v42;
  v98(v42, v51);
  v69 = v49;
  v56 = v88;
  v57 = v90;
  v90(v49, v88);
  sub_100081158();
  sub_100080448();
  v58 = v79;
  v100(v79, v49, v56);
  v59 = v97;
  v103(v50, v55, v97);
  v60 = v81;
  v61 = v102;
  *v81 = v101;
  v61(v60, v54, v99);
  v62 = v95;
  sub_100080208();
  v98(v55, v59);
  v63 = v69;
  v64 = v88;
  v57(v69, v88);
  v70(v62, 0, 1, v86);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  sub_100081158();
  sub_100080448();
  v100(v58, v63, v64);
  v103(v50, v55, v59);
  *v60 = v101;
  v102(v60, v93, v99);
  sub_100080208();
  v98(v55, v59);
  v90(v63, v64);
  v65 = v83;
  sub_10007FC08();
  v66 = v72;
  v67 = v73;
  v73(v65, 0, 1, v72);
  v67(v84, 1, 1, v66);
  v76(v85, v75, v87);
  sub_100013BC4();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v106 = 0u;
  v107 = 0u;
  *&v108 = 0;
  sub_10007FAE8();
  sub_10007FAB8();
  return v77;
}

uint64_t sub_100018F28(int a1, _OWORD *a2)
{
  v86 = a2;
  v85 = a1;
  v95 = sub_100080078();
  v106 = *(v95 - 8);
  v2 = *(v106 + 64);
  __chkstk_darwin(v95);
  v93 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v92 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v74 - v8;
  v9 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v105 = &v74 - v11;
  v98 = sub_1000801E8();
  v114 = *(v98 - 8);
  v12 = *(v114 + 64);
  __chkstk_darwin(v98);
  v14 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_100080478();
  v15 = *(v107 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v107);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v74 - v20;
  v22 = sub_1000811C8();
  v88 = v22;
  v113 = *(v22 - 8);
  v23 = v113;
  v24 = *(v113 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v74 - v28;
  v94 = sub_1000801F8();
  v100 = *(v94 - 8);
  v30 = *(v100 + 64);
  v31 = __chkstk_darwin(v94);
  v84 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v99 = &v74 - v33;
  v83 = sub_100002840(&qword_1000AD418, &qword_100087370);
  sub_100081158();
  sub_100080448();
  v34 = *(v23 + 16);
  v97 = v23 + 16;
  v109 = v34;
  v34(v27, v29, v22);
  v35 = v15[2];
  v103 = v15 + 2;
  v104 = v35;
  v96 = v19;
  v36 = v107;
  v35(v19, v21, v107);
  v110 = type metadata accessor for BundleFinder();
  *v14 = v110;
  v112 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v37 = *(v114 + 104);
  v114 += 104;
  v111 = v37;
  v38 = v98;
  v37(v14);
  sub_100080208();
  v101 = v15[1];
  v102 = v15 + 1;
  v101(v21, v36);
  v39 = v113 + 8;
  v108 = *(v113 + 8);
  v40 = v88;
  v108(v29, v88);
  v113 = v39;
  v41 = v29;
  sub_100081158();
  sub_100080448();
  v89 = v27;
  v109(v27, v29, v40);
  v75 = v21;
  v42 = v107;
  v104(v96, v21, v107);
  *v14 = v110;
  v90 = v14;
  v111(v14, v112, v38);
  v43 = v105;
  sub_100080208();
  v101(v21, v42);
  v44 = v41;
  v108(v41, v40);
  v45 = *(v100 + 56);
  v100 += 56;
  v76 = v45;
  v45(v43, 0, 1, v94);
  LOBYTE(v116) = 0;
  v46 = sub_10007FBF8();
  v78 = v46;
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v79 = v48;
  v80 = v47 + 56;
  v48(v91, 1, 1, v46);
  v48(v92, 1, 1, v46);
  v81 = enum case for InputConnectionBehavior.default(_:);
  v49 = *(v106 + 104);
  v106 += 104;
  v82 = v49;
  v49(v93);
  sub_100012710();
  v83 = sub_10007FD18();
  v77 = sub_100002840(&qword_1000AD420, &qword_100087378);

  v87 = v41;
  sub_100081158();
  v50 = v75;
  sub_100080448();
  v51 = v89;
  v109(v89, v44, v40);
  v52 = v107;
  v53 = v104;
  v104(v96, v50, v107);
  v54 = v90;
  *v90 = v110;
  v55 = v98;
  v111(v54, v112, v98);
  sub_100080208();
  v56 = v101;
  v101(v50, v52);
  v57 = v87;
  v58 = v88;
  v108(v87, v88);
  sub_100081158();
  sub_100080448();
  v109(v51, v57, v58);
  v59 = v96;
  v60 = v107;
  v53(v96, v50, v107);
  v61 = v90;
  *v90 = v110;
  v111(v61, v112, v55);
  v62 = v105;
  v63 = v89;
  sub_100080208();
  v56(v50, v60);
  v64 = v87;
  v108(v87, v58);
  v76(v62, 0, 1, v94);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  sub_100081158();
  sub_100080448();
  v109(v63, v64, v58);
  v104(v59, v50, v60);
  *v61 = v110;
  v111(v61, v112, v98);
  sub_100080208();
  v101(v50, v60);
  v108(v64, v58);
  v65 = v91;
  sub_10007FC08();
  v66 = v78;
  v67 = v79;
  v79(v65, 0, 1, v78);
  v67(v92, 1, 1, v66);
  v82(v93, v81, v95);
  sub_100013BC4();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v116 = 0u;
  v117 = 0u;
  *&v118 = 0;

  sub_10007FAE8();
  sub_10007FAB8();
  LOBYTE(v116) = v85 & 1;

  v68 = v83;
  sub_10007FCF8();
  v69 = v86;
  v70 = v86[3];
  v118 = v86[2];
  v119 = v70;
  v71 = v86[5];
  v120 = v86[4];
  v121 = v71;
  v72 = v86[1];
  v116 = *v86;
  v117 = v72;
  sub_1000055FC(v86, v115, &qword_1000AD498, &qword_100087420);
  sub_10007FCF8();
  sub_100005B2C(v69, &qword_1000AD498, &qword_100087420);

  return v68;
}

unint64_t sub_100019DAC()
{
  result = qword_1000AD3B8;
  if (!qword_1000AD3B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AD3B8);
  }

  return result;
}

uint64_t sub_100019DF8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100019E44()
{
  result = qword_1000AD3E8;
  if (!qword_1000AD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD3E8);
  }

  return result;
}

unint64_t sub_100019E98()
{
  result = qword_1000AD408;
  if (!qword_1000AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD408);
  }

  return result;
}

uint64_t sub_100019EEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10007FD08();
  *a2 = result;
  return result;
}

uint64_t sub_100019F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10007FD08();
  *a2 = result;
  return result;
}

uint64_t sub_100019F80()
{
  v0 = type metadata accessor for WidgetDataCacheManager();
  result = swift_allocObject();
  qword_1000B7F28 = v0;
  unk_1000B7F30 = &off_1000A7B08;
  qword_1000B7F10 = result;
  return result;
}

void sub_100019FCC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1000B7F38 = v2;
}

Swift::Int sub_10001A044()
{
  v1 = *v0;
  sub_1000816B8();
  sub_1000816C8(v1);
  return sub_1000816F8();
}

Swift::Int sub_10001A0B8()
{
  v1 = *v0;
  sub_1000816B8();
  sub_1000816C8(v1);
  return sub_1000816F8();
}

uint64_t sub_10001A10C()
{
  v0 = sub_100080688();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000AC660 != -1)
  {
    swift_once();
  }

  v10 = sub_100080678();
  sub_10000A480(v10, qword_1000AD4B8);
  v11 = sub_100080668();
  sub_100080698();
  v12 = sub_100081488();
  if (sub_1000814D8())
  {

    sub_1000806C8();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_100080628();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "Raw Cover Fetching", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10001A398(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_10001A3E4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005554((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100002840(&qword_1000AD580, &qword_1000874A0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001A4BC(uint64_t a1, void *a2)
{
  v3 = sub_100005554((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10001A544()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AD4A0);
  sub_10000A480(v0, qword_1000AD4A0);
  return sub_1000806E8();
}

uint64_t sub_10001A5C4()
{
  v0 = sub_1000806F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080678();
  sub_10000A794(v5, qword_1000AD4B8);
  sub_10000A480(v5, qword_1000AD4B8);
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A480(v0, qword_1000AD4A0);
  (*(v1 + 16))(v4, v6, v0);
  return sub_100080658();
}

uint64_t sub_10001A700(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 152) = a1;
  v6 = sub_100080308();
  *(v5 + 192) = v6;
  v7 = *(v6 - 8);
  *(v5 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10001A7D4, 0, 0);
}

uint64_t sub_10001A7D4()
{
  v35 = v0;
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 27);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 21);
  v5 = *(v0 + 19);
  v6 = sub_1000806F8();
  *(v0 + 28) = sub_10000A480(v6, qword_1000AD4A0);
  v7 = *(v3 + 16);
  *(v0 + 29) = v7;
  *(v0 + 30) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);

  v8 = sub_1000806D8();
  v9 = sub_100081468();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 27);
  v13 = *(v0 + 24);
  v12 = *(v0 + 25);
  if (v10)
  {
    v15 = *(v0 + 20);
    v14 = *(v0 + 21);
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10006150C(v15, v14, &v34);
    *(v16 + 12) = 2080;
    v17 = sub_100080288();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v21 = sub_10006150C(v17, v19, &v34);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Generating a thumbnail from QuickLook for assetID: %s, url: %s.", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v11, v13);
  }

  *(v0 + 31) = v20;
  if (qword_1000AC650 != -1)
  {
    swift_once();
  }

  v23 = v0[22];
  v22 = v0[23];
  v24 = *(v0 + 19);
  v25 = *&qword_1000B7F38;
  v26 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_1000802A8(v27);
  v29 = v28;
  v30 = [v26 initWithFileAtURL:v28 size:-1 scale:v23 representationTypes:{v22, v25}];
  *(v0 + 32) = v30;

  v31 = [objc_opt_self() sharedGenerator];
  *(v0 + 33) = v31;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_10001AB9C;
  v32 = swift_continuation_init();
  *(v0 + 17) = sub_100002840(&qword_1000AD578, &qword_100087498);
  *(v0 + 10) = _NSConcreteStackBlock;
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_10001A3E4;
  *(v0 + 13) = &unk_1000A76A0;
  *(v0 + 14) = v32;
  [v31 generateBestRepresentationForRequest:v30 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001AB9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_10001AD80;
  }

  else
  {
    v3 = sub_10001ACAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001ACAC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 144);

  v5 = [v4 UIImage];
  v6 = [v4 type];

  v7 = *(v0 + 8);

  return v7(v5, v6 == 0);
}

uint64_t sub_10001AD80()
{
  v32 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v30 = v0[28];
  v6 = v0[26];
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[19];
  swift_willThrow();

  v5(v6, v9, v7);

  v10 = sub_1000806D8();
  v11 = sub_100081448();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[31];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  if (v12)
  {
    v18 = v0[20];
    v17 = v0[21];
    v19 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10006150C(v18, v17, v31);
    *(v19 + 12) = 2080;
    v20 = sub_100080288();
    v22 = v21;
    v13(v14, v16);
    v23 = sub_10006150C(v20, v22, v31);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to download a thumbnail from QuickLook for assetID: %s, url: %s.", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v13(v14, v16);
  }

  v24 = v0[34];
  v26 = v0[26];
  v25 = v0[27];
  sub_10001EF88();
  swift_allocError();
  *v27 = 3;
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_10001AFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 208) = a5;
  *(v6 + 216) = a6;
  *(v6 + 192) = a3;
  *(v6 + 200) = a4;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;
  v7 = *(*(sub_100002840(&qword_1000AD3B0, &unk_100087320) - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v8 = sub_100080308();
  *(v6 + 232) = v8;
  v9 = *(v8 - 8);
  *(v6 + 240) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10001B0E4, 0, 0);
}

uint64_t sub_10001B0E4()
{
  v48 = v1;
  if (qword_1000AC650 != -1)
  {
    swift_once();
  }

  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[22];
  v5 = v1[23];
  v1[32] = qword_1000B7F38;
  sub_1000814B8();
  v1[2] = v4;
  v1[3] = v5;
  v1[4] = 8222587;
  v1[5] = 0xE300000000000000;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7;
  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v1[20] = v6;
  v1[6] = sub_100081608();
  v1[7] = v9;
  v0 = sub_1000057D0();
  v4 = &type metadata for String;
  v10 = sub_100081538();
  v12 = v11;

  v1[8] = v10;
  v1[9] = v12;
  v1[10] = 8218747;
  v1[11] = 0xE300000000000000;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v1[29];
  v14 = v1[30];
  v15 = v1[28];
  v1[21] = v8;
  v1[12] = sub_100081608();
  v1[13] = v16;
  v17 = sub_100081538();
  v19 = v18;

  v1[14] = v17;
  v1[15] = v19;
  v1[16] = 8218235;
  v1[17] = 0xE300000000000000;
  v1[18] = 6778986;
  v1[19] = 0xE300000000000000;
  v45 = v0;
  v46 = v0;
  v44 = v0;
  v0 = sub_100081538();
  v4 = v20;

  v1[33] = v0;
  v1[34] = v4;
  sub_1000802E8();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_100005B2C(v1[28], &qword_1000AD3B0, &unk_100087320);
    if (qword_1000AC658 == -1)
    {
LABEL_11:
      v21 = v1[25];
      v22 = sub_1000806F8();
      sub_10000A480(v22, qword_1000AD4A0);

      v23 = sub_1000806D8();
      v24 = sub_100081448();

      if (os_log_type_enabled(v23, v24))
      {
        v26 = v1[24];
        v25 = v1[25];
        v27 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_10006150C(v26, v25, v47);
        *(v27 + 12) = 2080;
        v28 = sub_10006150C(v0, v4, v47);

        *(v27 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v23, v24, "Invalid cover URL for assetID: %s, url: %s.", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_10001EF88();
      swift_allocError();
      *v39 = 0;
      swift_willThrow();
      v40 = v1[31];
      v41 = v1[28];

      v42 = v1[1];

      return v42();
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  (*(v1[30] + 32))(v1[31], v1[28], v1[29]);
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v29 = v1[25];
  v30 = sub_1000806F8();
  v1[35] = sub_10000A480(v30, qword_1000AD4A0);

  v31 = sub_1000806D8();
  v32 = sub_100081468();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = v1[24];
    v33 = v1[25];
    v35 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_10006150C(v34, v33, v47);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_10006150C(v0, v4, v47);
    _os_log_impl(&_mh_execute_header, v31, v32, "Downloading cover image for asset '%s' from url %s.", v35, 0x16u);
    swift_arrayDestroy();
  }

  v1[36] = [objc_opt_self() sharedSession];
  v36 = async function pointer to NSURLSession.data(from:delegate:)[1];
  v37 = swift_task_alloc();
  v1[37] = v37;
  *v37 = v1;
  v37[1] = sub_10001B7CC;
  v38 = v1[31];

  return NSURLSession.data(from:delegate:)(v38, 0);
}

uint64_t sub_10001B7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 296);
  v8 = *v4;
  v6[38] = a1;
  v6[39] = a2;
  v6[40] = a3;
  v6[41] = v3;

  v9 = v5[36];
  if (v3)
  {
    v10 = v6[34];

    v11 = sub_10001BD9C;
  }

  else
  {

    v11 = sub_10001B91C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10001B91C()
{
  v51 = v0;
  v1 = *(v0 + 40);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 statusCode] == 200)
  {
    v4 = *(v0 + 38);
    v3 = *(v0 + 39);
    v5 = *(v0 + 34);
    v6 = v0[32];

    v7 = objc_allocWithZone(UIImage);
    sub_10001F128(v4, v3);
    isa = sub_100080328().super.isa;
    v9 = [v7 initWithData:isa scale:v6];

    sub_10001F0D4(v4, v3);
    if (v9)
    {
      v10 = *(v0 + 39);
      v11 = *(v0 + 40);
      v12 = *(v0 + 38);
      v13 = *(v0 + 28);
      (*(*(v0 + 30) + 8))(*(v0 + 31), *(v0 + 29));
      sub_10001F0D4(v12, v10);

      v14 = *(v0 + 1);

      return v14(v9);
    }

    v38 = *(v0 + 35);
    v39 = *(v0 + 25);

    v40 = sub_1000806D8();
    v41 = sub_100081448();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 24);
      v42 = *(v0 + 25);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10006150C(v43, v42, &v50);
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to create UIImage from downloaded image data for assetID %s.", v44, 0xCu);
      sub_100019DF8(v45);
    }

    v46 = *(v0 + 39);
    v47 = *(v0 + 40);
    v48 = *(v0 + 38);
    v32 = *(v0 + 30);
    v31 = *(v0 + 31);
    v33 = *(v0 + 29);
    sub_10001EF88();
    swift_allocError();
    *v49 = 5;
    swift_willThrow();

    sub_10001F0D4(v48, v46);
  }

  else
  {
    v17 = *(v0 + 34);
    v16 = *(v0 + 35);
    v18 = *(v0 + 25);

    v19 = sub_1000806D8();
    v20 = sub_100081448();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 34);
    if (v21)
    {
      v23 = *(v0 + 33);
      v25 = *(v0 + 24);
      v24 = *(v0 + 25);
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_10006150C(v25, v24, &v50);
      *(v26 + 12) = 2080;
      v27 = sub_10006150C(v23, v22, &v50);

      *(v26 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cover httpResponse status code is not 200 for assetID: %s, url: %s.", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v28 = *(v0 + 39);
    v29 = *(v0 + 40);
    v30 = *(v0 + 38);
    v32 = *(v0 + 30);
    v31 = *(v0 + 31);
    v33 = *(v0 + 29);
    sub_10001EF88();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    sub_10001F0D4(v30, v28);
  }

  (*(v32 + 8))(v31, v33);
  v35 = *(v0 + 31);
  v36 = *(v0 + 28);

  v37 = *(v0 + 1);

  return v37();
}

uint64_t sub_10001BD9C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = v0[41];
  v2 = v0[31];
  v3 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001BE24(uint64_t a1, double a2, double a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 72) = a1;
  return _swift_task_switch(sub_10001BE48, 0, 0);
}

uint64_t sub_10001BE48()
{
  v65 = v0;
  v1 = *(v0 + 72);
  v3 = v1[4];
  v2 = v1[5];
  if (v1[1])
  {
    v4 = *v1;
    v5 = v1[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = objc_opt_self();

  v7 = sub_1000811D8();
  v8 = sub_1000811D8();
  v9 = [v6 bk_queryWithStoreID:v7 albumTitle:v8 isCloudItem:1];

  if (!v9)
  {
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v15 = sub_1000806F8();
    sub_10000A480(v15, qword_1000AD4A0);

    v16 = sub_1000806D8();
    v17 = sub_100081448();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *&v63 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10006150C(v3, v2, &v63);
      *(v18 + 12) = 2080;
      v19 = sub_10006150C(v4, v5, &v63);

      *(v18 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v16, v17, "Nil MPMediaQuery for audiobook with assetID: %s title: %s.", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10001EF88();
    swift_allocError();
    *v20 = 6;
    swift_willThrow();
    goto LABEL_50;
  }

  v10 = [v9 items];
  if (!v10)
  {
    goto LABEL_44;
  }

  v11 = v10;
  sub_10001F1E0(0, &qword_1000AD590, MPMediaItem_ptr);
  v12 = sub_100081378();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  if (!sub_1000815B8())
  {
LABEL_43:

LABEL_44:
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v55 = sub_1000806F8();
    sub_10000A480(v55, qword_1000AD4A0);

    v56 = sub_1000806D8();
    v57 = sub_100081448();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v63 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_10006150C(v3, v2, &v63);
      _os_log_impl(&_mh_execute_header, v56, v57, "Nil MPMediaItem for audiobook with assetID: %s.", v58, 0xCu);
      sub_100019DF8(v59);
    }

    sub_10001EF88();
    swift_allocError();
    *v60 = 7;
    swift_willThrow();
    goto LABEL_49;
  }

LABEL_8:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_100081598();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v13 = *(v12 + 32);
  }

  v5 = v13;
  isEscapingClosureAtFileLocation = v0 + 16;

  if ([v5 valueForProperty:MPMediaItemPropertyArtwork])
  {
    sub_100081548();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v21 = v64;
  *isEscapingClosureAtFileLocation = v63;
  *(v0 + 32) = v21;
  if (!*(v0 + 40))
  {
    goto LABEL_27;
  }

  sub_10001F1E0(0, &qword_1000AD5A0, MPMediaItemArtwork_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = *(v0 + 64);
  v23 = [v22 imageWithSize:{*(v0 + 80), *(v0 + 88)}];
  if (!v23)
  {
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v45 = sub_1000806F8();
    sub_10000A480(v45, qword_1000AD4A0);

    v46 = sub_1000806D8();
    v47 = sub_100081448();

    if (os_log_type_enabled(v46, v47))
    {
      v49 = *(v0 + 80);
      v48 = *(v0 + 88);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v63 = v51;
      *v50 = 136315650;
      *(v50 + 4) = sub_10006150C(v3, v2, &v63);
      *(v50 + 12) = 2048;
      *(v50 + 14) = v49;
      *(v50 + 22) = 2048;
      *(v50 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v46, v47, "Nil image for store audiobook with assetID: %s width: %f height: %f.", v50, 0x20u);
      sub_100019DF8(v51);
    }

    sub_10001EF88();
    swift_allocError();
    *v52 = 8;
    swift_willThrow();

    goto LABEL_32;
  }

  v24 = v23;
  v25 = *(v0 + 88);
  [v23 size];
  if (v26 <= v25 && (v27 = *(v0 + 80), [v24 size], v28 <= v27))
  {
  }

  else
  {
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    [v24 size];
    sub_1000814C8();
    v32 = v31;
    v34 = v33;
    v62 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v31, v33}];
    v2 = swift_allocObject();
    *(v2 + 2) = v24;
    v2[3] = v32;
    v2[4] = v34;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_10001F260;
    *(v3 + 24) = v2;
    *(v0 + 48) = sub_10001F28C;
    *(v0 + 56) = v3;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A398;
    *(v0 + 40) = &unk_1000A7740;
    v35 = _Block_copy((v0 + 16));
    v36 = v22;
    v37 = *(v0 + 56);
    v38 = v24;

    v24 = [v62 imageWithActions:v35];

    _Block_release(v35);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_27:
      sub_100005B2C(isEscapingClosureAtFileLocation, &qword_1000AD598, &qword_1000874B0);
LABEL_28:
      if (qword_1000AC658 == -1)
      {
LABEL_29:
        v39 = sub_1000806F8();
        sub_10000A480(v39, qword_1000AD4A0);

        v40 = sub_1000806D8();
        v41 = sub_100081448();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v63 = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_10006150C(v3, v2, &v63);
          _os_log_impl(&_mh_execute_header, v40, v41, "Nil media artwork for audiobook with assetID: %s.", v42, 0xCu);
          sub_100019DF8(v43);
        }

        sub_10001EF88();
        swift_allocError();
        *v44 = 8;
        swift_willThrow();
LABEL_32:

LABEL_49:
LABEL_50:
        v61 = *(v0 + 8);

        return v61();
      }

LABEL_55:
      swift_once();
      goto LABEL_29;
    }
  }

  v53 = *(v0 + 8);

  return v53(v24);
}

uint64_t sub_10001C890(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 192) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  return _swift_task_switch(sub_10001C8B4, 0, 0);
}

uint64_t sub_10001C8B4()
{
  v61 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 32);
  *(v0 + 168) = v2;
  v3 = *(v1 + 40);
  *(v0 + 176) = v3;
  if (qword_1000AC648 != -1)
  {
    swift_once();
  }

  v4 = *sub_100005554(qword_1000B7F10, qword_1000B7F28);
  if (sub_10003A734(v2, v3, 0))
  {
    if (qword_1000AC658 != -1)
    {
      swift_once();
    }

    v5 = sub_1000806F8();
    sub_10000A480(v5, qword_1000AD4A0);

    v6 = sub_1000806D8();
    v7 = sub_100081468();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v60[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10006150C(v2, v3, v60);
      _os_log_impl(&_mh_execute_header, v6, v7, "Found cached untreated thumbnail image for asset: %s.", v8, 0xCu);
      sub_100019DF8(v9);
    }

LABEL_9:
    v10 = *(v0 + 8);

    return v10();
  }

  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v58 = (v0 + 144);
  v12 = sub_1000806F8();
  *(v0 + 184) = sub_10000A480(v12, qword_1000AD4A0);

  v13 = sub_1000806D8();
  v14 = sub_100081468();

  v59 = (v0 + 80);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v60[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10006150C(v2, v3, v60);
    _os_log_impl(&_mh_execute_header, v13, v14, "Generating untreated thumbnail image for asset: %s.", v15, 0xCu);
    sub_100019DF8(v16);
  }

  [*(v0 + 152) size];
  if (v17 <= 160.0)
  {
    [*(v0 + 152) size];
    if (v18 <= 160.0)
    {
      v30 = *(v0 + 152);

      v31 = v30;
      v32 = sub_1000806D8();
      v33 = sub_100081468();

      if (os_log_type_enabled(v32, v33))
      {
        v57 = *(v0 + 192);
        v34 = *(v0 + 152);
        v35 = swift_slowAlloc();
        v60[0] = swift_slowAlloc();
        *v35 = 136315906;
        [v34 size];
        v36 = sub_1000814A8();
        v38 = sub_10006150C(v36, v37, v60);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2048;
        [v34 scale];
        *(v35 + 14) = v39;
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_10006150C(v2, v3, v60);
        *(v35 + 32) = 1024;
        *(v35 + 34) = v57;
        _os_log_impl(&_mh_execute_header, v32, v33, "Using the raw untreated cover. Its current size is %s and scale is %f for asset: %s isAppIconCover: %{BOOL}d.", v35, 0x26u);
        swift_arrayDestroy();
      }

      v40 = *(v0 + 152);
      v41 = *(v0 + 176);
      v42 = *(v0 + 184);

      v43 = sub_1000806D8();
      v44 = sub_100081468();

      if (os_log_type_enabled(v43, v44))
      {
        v46 = *(v0 + 168);
        v45 = *(v0 + 176);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v60[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_10006150C(v46, v45, v60);
        _os_log_impl(&_mh_execute_header, v43, v44, "Caching untreated thumbnail for asset: %s.", v47, 0xCu);
        sub_100019DF8(v48);
      }

      v49 = *(v0 + 192);
      sub_10001F17C(qword_1000B7F10, v59);
      v50 = sub_100005554(v59, *(v0 + 104));
      if (v49 == 1)
      {
        if (_UISolariumEnabled())
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }
      }

      else
      {
        v51 = 0;
      }

      v53 = *(v0 + 168);
      v52 = *(v0 + 176);
      v54 = *v50;
      v55 = objc_autoreleasePoolPush();
      sub_10003B608(v53, v52, v51, v40, v54, v58);
      objc_autoreleasePoolPop(v55);

      sub_100019DF8(v59);
      goto LABEL_9;
    }
  }

  v19 = *(v0 + 152);

  v20 = v19;
  v21 = sub_1000806D8();
  v22 = sub_100081468();

  if (os_log_type_enabled(v21, v22))
  {
    v56 = *(v0 + 192);
    v23 = *(v0 + 152);
    v24 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v24 = 136315650;
    [v23 size];
    v25 = sub_1000814A8();
    v27 = sub_10006150C(v25, v26, v60);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10006150C(v2, v3, v60);
    *(v24 + 22) = 1024;
    *(v24 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v21, v22, "About to resize the untreated cover because its current size: %s is larger than the specified size for asset: %s isAppIconCover: %{BOOL}d.", v24, 0x1Cu);
    swift_arrayDestroy();
  }

  v28 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v58;
  *(v0 + 24) = sub_10001D118;
  v29 = swift_continuation_init();
  *(v0 + 136) = sub_100002840(&qword_1000AD588, &qword_1000874A8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10001A4BC;
  *(v0 + 104) = &unk_1000A76C8;
  *(v0 + 112) = v29;
  [v28 prepareThumbnailOfSize:v59 completionHandler:{160.0, 160.0}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10001D118()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001D1F8, 0, 0);
}

uint64_t sub_10001D1F8()
{
  v37 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = (v0 + 80);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = v1;

    v6 = v5;
    v7 = sub_1000806D8();
    v8 = sub_100081468();

    if (os_log_type_enabled(v7, v8))
    {
      v34 = *(v0 + 176);
      v9 = *(v0 + 168);
      v35 = *(v0 + 192);
      v10 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v10 = 136315906;
      [v6 size];
      v11 = sub_1000814A8();
      v13 = sub_10006150C(v11, v12, v36);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2048;
      [v6 scale];
      *(v10 + 14) = v14;
      *(v10 + 22) = 2080;
      v15 = v9;
      v2 = (v0 + 80);
      *(v10 + 24) = sub_10006150C(v15, v34, v36);
      *(v10 + 32) = 1024;
      *(v10 + 34) = v35;
      _os_log_impl(&_mh_execute_header, v7, v8, "Done resizing the untreated cover. Its current size is %s and scale is %f for asset: %s isAppIconCover: %{BOOL}d.", v10, 0x26u);
      swift_arrayDestroy();
    }

    v16 = *(v0 + 176);
    v17 = *(v0 + 184);

    v18 = sub_1000806D8();
    v19 = sub_100081468();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 168);
      v20 = *(v0 + 176);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10006150C(v21, v20, v36);
      _os_log_impl(&_mh_execute_header, v18, v19, "Caching untreated thumbnail for asset: %s.", v22, 0xCu);
      sub_100019DF8(v23);
    }

    v24 = *(v0 + 192);
    sub_10001F17C(qword_1000B7F10, v2);
    v25 = sub_100005554(v2, *(v0 + 104));
    if (v24 == 1)
    {
      if (_UISolariumEnabled())
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 0;
    }

    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *v25;
    v31 = objc_autoreleasePoolPush();
    sub_10003B608(v29, v28, v26, v6, v30, (v0 + 144));
    objc_autoreleasePoolPop(v31);

    sub_100019DF8(v2);
    v32 = *(v0 + 8);
  }

  else
  {
    sub_10001EF88();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    v32 = *(v0 + 8);
  }

  return v32();
}